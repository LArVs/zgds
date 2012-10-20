/*
{"id":null,
"eid":0,
"fname_id":0,
"lname_id":0,
"pname_id":0,
"date_of_birth":"0000-00-00",
"age":0,
"region_id":0,
"city_id":0,
"district_id":0,
"street_id":0,
"house_number":0,
"house_number_a":"",
"flat_number":0,
"telephone":"",
"address_info":"",
"status":0,
"organization_id":0,
"status_info":"",
"diagnosis_id":0,
"diagnosis_type":0,
"date_of_disease":"0000-00-00",
"date_of_reference_patient":"0000-00-00",
"established_lpu_id":0,
"established_person":"",
"declarant_lpu_id":0,
"declarant_person":"",
"direction_diagnosis_id":0,
"contact_eid":0,
"special_contingent":"",
"datetime_of_registration":"0000-00-00 00:00:00",
"registration_person_by_tel":"",
"registration_person_by_db":"",
"hospitalization_by_lpu_id":0,
"datetime_of_hospitalization":"0000-00-00 00:00:00",
"belongs_to_lpu_id":0,
"department_of_lpu_id":0,
"hospitalization_to_lpu_id":0,
"hospitalization_department_of_lpu_id":0,
"diagnosis_1st_id":0,
"diagnosis_1st_person":"",
"diagnosis_1st_date":"0000-00-00",
"diagnosis_2st_id":0,
"diagnosis_2st_person":"",
"diagnosis_2st_date":"0000-00-00",
"discharge_type":0,
"date_of_discharge":"0000-00-00",
"date_of_bacteriological_analysis_start":"0000-00-00",
"date_of_bacteriological_analysis_finish":"0000-00-00",
"bacteriological_analysis":""}
*/

Ext.define( 'RCard.model.Cards', {
	extend: 'Ext.data.Model',
	fields: [
		{ name: 'id',                       type: 'int'    },
		{ name: 'eid',                      type: 'int'    },
		{ name: 'fname',                    type: 'string' },
		{ name: 'lname',                    type: 'string' },
		{ name: 'datetime_of_registration', type: 'date'   },
	],
	//associations: [
        //{ type: 'belongsTo', model: 'Fname', name: 'fname', primaryKey: 'fname_id', foreignKey: 'id' },
    //],
});

