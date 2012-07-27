<?php
/**
 * Grabs a list of Categories.
 *
 * @param integer $start (optional) The record to start at. Defaults to 0.
 * @param integer $limit (optional) The number of records to limit to. Defaults
 * to 10.
 * @param string $sort (optional) The column to sort by. Defaults to category.
 * @param string $dir (optional) The direction of the sort. Defaults to ASC.
 *
 * @package modx
 * @subpackage processors.element.category
 */
class modElementCategoryGetListProcessor extends modObjectGetListProcessor {
    public $classKey = 'modCategory';
    public $languageTopics = array('category');
    public $defaultSortField = 'category';

    public function initialize() {
        $initialized = parent::initialize();
        $this->setDefaultProperties(array(
            'showNone' => false,
        ));
        return $initialized;
    }

    public function beforeIteration(array $list) {
        if ($this->getProperty('showNone',false)) {
            $list = array('0' => array(
                'id' => '',
                'category' => $this->modx->lexicon('none'),
                'name' => $this->modx->lexicon('none'),
            ));
        }
        return $list;
    }

    public function iterate(array $data) {
        $list = array();
        $list = $this->beforeIteration($list);
        /** @var modCategory $category */
        foreach ($data['results'] as $category) {
            if (!$category->checkPolicy('list')) continue;
            $categoryArray = $category->toArray();

            $childrenCount = $this->modx->getCount('modCategory',array('parent' => $category->get('id')));

            $categoryArray['name'] = $category->get('category');
            $list[] = $categoryArray;

            /* if has subcategories, display here */
            if ($childrenCount > 0) {
                $c = $this->modx->newQuery('modCategory');
                $c->where(array('parent' => $category->get('id')));
                $c->sortby('category','ASC');
                $children = $category->getMany('Children',$c);
                /** @var modCategory $child */
                foreach ($children as $child) {
                    $grandchildrenCount = $this->modx->getCount('modCategory',array('parent' => $child->get('id')));

                    $categoryArray = $child->toArray();
                    $categoryArray['name'] = $category->get('category').' - '.$child->get('category');
                    $list[] = $categoryArray;

                    /* if has subsubcategories, display here */
                    if ($grandchildrenCount > 0) {
                        $c = $this->modx->newQuery('modCategory');
                        $c->where(array('parent' => $child->get('id')));
                        $c->sortby('category','ASC');
                        $grandchildren = $child->getMany('Children',$c);
                        /** @var modCategory $grandchild */
                        foreach ($grandchildren as $grandchild) {
                            $categoryArray = $grandchild->toArray();
                            $categoryArray['name'] = $category->get('category').' - '.$child->get('category').' - '.$grandchild->get('category');
                            $list[] = $categoryArray;
                        }
                    }
                }
            }
        }
        $list = $this->afterIteration($list);
        return $list;
    }

    public function prepareQueryBeforeCount(xPDOQuery $c) {
        $c->where(array(
            'modCategory.parent' => 0,
        ));
        return $c;
    }

    public function prepareQueryAfterCount(xPDOQuery $c) {
        if ($this->getProperty('sort') == 'category') {
            $c->sortby('parent',$this->getProperty('dir','ASC'));
        }
        return $c;
    }
}
return 'modElementCategoryGetListProcessor';