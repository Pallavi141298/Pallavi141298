{
	"contents": {
		"865ab394-e078-44fd-94dd-27267b39453d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "requestforleave.myworkflow",
			"subject": "MyWorkflow",
			"name": "MyWorkflow",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"c8f43773-3b41-415f-affb-b66c18570406": {
					"name": "Accept and Reject"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"4182c31c-a4bf-4fc6-9745-8ad9679c0ea4": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "c8f43773-3b41-415f-affb-b66c18570406"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"dadc3133-dc17-43ae-8713-61b84bb13323": {},
				"f9bbb4da-31df-4732-8157-a8e53ef80bb8": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 240,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "dadc3133-dc17-43ae-8713-61b84bb13323",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"c8f43773-3b41-415f-affb-b66c18570406": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Accept and Reject for ${context.empData.Name}",
			"description": "The manager accept and reject the request for employee",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/MyWorkflow/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Accept and Reject"
		},
		"dadc3133-dc17-43ae-8713-61b84bb13323": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 190,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "c8f43773-3b41-415f-affb-b66c18570406"
		},
		"4182c31c-a4bf-4fc6-9745-8ad9679c0ea4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "c8f43773-3b41-415f-affb-b66c18570406",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"f9bbb4da-31df-4732-8157-a8e53ef80bb8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "240,117.75 357.5,117.75",
			"sourceSymbol": "dadc3133-dc17-43ae-8713-61b84bb13323",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "4182c31c-a4bf-4fc6-9745-8ad9679c0ea4"
		}
	}
}