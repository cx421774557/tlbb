
--MisDescBegin
--�ű���
x050061_g_ScriptId	= 050061

--��������NPC����
x050061_g_Position_X=78
x050061_g_Position_Z=95
x050061_g_SceneID=12
x050061_g_AccomplishNPC_Name="������"

--��ǰ�����
x050061_g_MissionId			= 1150
--��һ�������ID
x050061_g_MissionIdNext	= -1
--����Ŀ��npc
x050061_g_Name 					= ""
--�������
x050061_g_MissionKind			= 3
--����ȼ�
x050061_g_MissionLevel		= 10000
--�Ƿ��Ǿ�Ӣ����
x050061_g_IfMissionElite	= 0
--�����Ƿ��Ѿ����
x050061_g_IsMissionOkFail	= 0		--��������ĵ�0λ

--x050059_g_MissionRound = 249

--�Ƿ���ʾ�������
x050061_g_AccomplishCircumstance = 0

--�����ı�����
x050061_g_MissionName			= "���������ɹ�"
--��������
x050061_g_MissionInfo			= ""
--����Ŀ��
x050061_g_MissionTarget		= "%f"
--δ��������npc�Ի�
x050061_g_ContinueInfo		= ""
--�������npc˵�Ļ�
x050061_g_MissionComplete	= ""
--ÿ�λ������ɵĴ���
x050061_g_MaxRound	= 3

--���������ַ�����ʽ��������
x050061_g_FormatList = {
								"#{SMCJ_081021_29}",
								"#{SMCJ_081021_30}",
								"#{SMCJ_081021_31}",
								"#{SMCJ_081021_32}",
								"#{SMCJ_081021_33}",
								"#{SMCJ_081021_34}",
								"#{SMCJ_081021_35}",
								"#{SMCJ_081021_36}",
								"#{SMCJ_081021_37}",
								"#{SMCJ_081021_38}",
								"#{SMCJ_081021_39}",
								"#{SMCJ_081021_40}",
								"#{SMCJ_081021_41}",
								"#{SMCJ_081021_42}",
								"#{SMCJ_081021_43}",
								"#{SMCJ_081021_44}",
								"#{SMCJ_081021_45}",
								"#{SMCJ_081021_46}",
								}


-- ����������,���ݶ�̬ˢ��,ռ����������ĵ�1,2λ
x050061_g_Custom	=  { {id="#Y����ǰ����",num=8}}
--MisDescEnd

x050061_G_RefID = 050059


function x050061_GetStrIndexByStrValue(stringV)
	for i, v in x050061_g_StrList do
		if v == stringV then
			return i-1
		end
	end
	local strText = format("���뽫%sע�ᵽStrList��", stringV)
	----PrintStr(strText)
	return 0;
end

function x050061_OnEnumerate( sceneId, selfId, targetId )
	CallScriptFunction(x050061_G_RefID,"OnEnumerate",sceneId,selfId,targetId,x050061_g_ScriptId)
end

function x050061_OnDefaultEvent( sceneId, selfId, targetId,MenPai)
	CallScriptFunction(x050061_G_RefID,"OnDefaultEvent",sceneId, selfId, targetId,MenPai,x050061_g_MissionId,x050061_g_ScriptId)
end

function x050061_OnContinue( sceneId, selfId, targetId )
	CallScriptFunction( x050061_G_RefID, "OnContinue",sceneId, selfId, targetId,x050061_g_MissionId,x050061_g_ScriptId)
end

--**********************************
--�ύ
--**********************************
function x050061_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	CallScriptFunction( x050061_G_RefID, "OnSubmit",sceneId, selfId, targetId, selectRadioId,x050061_g_MissionId,x050061_g_ScriptId)
end

function x050061_OnItemChanged( sceneId, selfId, itemdataId )
	CallScriptFunction( x050061_G_RefID, "OnItemChanged",sceneId, selfId, itemdataId,x050061_g_MissionId,x050061_g_ScriptId)
end

--**********************************
--����
--**********************************
function x050061_OnContinue( sceneId, selfId, targetId)
	CallScriptFunction(x050061_G_RefID,"OnContinue",sceneId, selfId, targetId,x050061_g_MissionId,x050061_g_ScriptId)
end

--**********************************
--����
--**********************************
function x050061_OnAbandon( sceneId, selfId)
	CallScriptFunction(x050061_G_RefID,"OnAbandon",sceneId, selfId,x050061_g_MissionId)
end
