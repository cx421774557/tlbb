--��翷帱��....
--���ϴ�Ի��ű�....

--�ű���
x402077_g_ScriptId = 402077

--�����߼��ű���....
x402077_g_FuBenScriptId = 402082

--ս�����ϴ�Ի��ű���....
--x402077_g_LossScriptId = 402091

--**********************************
--������ں���....
--**********************************
function x402077_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)

		AddText( sceneId, "    #����ô���ܵ�����ǰ���ѵ��ҽ���������Ѿ�...��ɷ��Ҳ�������Ҷ�ҪΪ��㱨��ѩ�ޣ�����" )
		AddNumText( sceneId, x402077_g_ScriptId, "��ս", 10, 1 )

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
--		if 1 == CallScriptFunction( x402077_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
--			AddNumText( sceneId, x402077_g_ScriptId, "��ս����ˮ��", 10, 2 )
--		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x402077_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x402077_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
		return
	end

	--�ǲ��Ƕӳ�....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������ںͱ��BOSSս���򷵻�....
--	local ret, msg = CallScriptFunction( x402077_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
--	if 1 == ret then
--		BeginEvent(sceneId)
--			AddText( sceneId, msg )
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
--		return
--	end

	if GetNumText() == 1 then

		--�жϵ�ǰ�Ƿ������ս���ϴ�....	
		if 1 ~= CallScriptFunction( x402077_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "WuLaoDa" ) then
			BeginEvent(sceneId)
				AddText( sceneId, "    #�ȹ����ҽ����������һ����������һս��" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		--������翷��ʱ���������Լ�....
		CallScriptFunction( x402077_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402077_g_ScriptId, -1 ,-1 )

--	elseif GetNumText() == 2 then

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
--		if 1 ~= CallScriptFunction( x402077_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
--			return
--		end
		--������翷��ʱ������������ˮ....
--		CallScriptFunction( x402077_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402077_g_LossScriptId, -1 ,-1 )

	end
	        local	lev	= GetLevel( sceneId, selfId )
		if (lev<=120  	and lev>  110 ) then
		--����BOSS....
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս����ʼ" )
		--ɾ��NPC....
		CallScriptFunction( x402077_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa5_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei6_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei7_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei8_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei9_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei10_BOSS", -1, -1 )
		return

		elseif (lev<=110  	and lev>  100 ) then
		--����BOSS....
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս����ʼ" )
		--ɾ��NPC....
		CallScriptFunction( x402077_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa4_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei6_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei7_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei8_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei9_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei10_BOSS", -1, -1 )
		return

		elseif (lev<=100  	and lev>  90 ) then
		--����BOSS....
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս����ʼ" )
		--ɾ��NPC....
		CallScriptFunction( x402077_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa3_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei6_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei7_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei8_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei9_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei10_BOSS", -1, -1 )
		return

		elseif (lev<=90  	and lev>  80 ) then
		--����BOSS....
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս����ʼ" )
		--ɾ��NPC....
		CallScriptFunction( x402077_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa2_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei6_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei7_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei8_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei9_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei10_BOSS", -1, -1 )
		return
	
		elseif (lev<=80  	and lev>  70 ) then
		--����BOSS....
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս����ʼ" )
		--ɾ��NPC....
		CallScriptFunction( x402077_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa1_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei6_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei7_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei8_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei9_BOSS", -1, -1 )
		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "linzhenshouwei10_BOSS", -1, -1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x402077_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս��5���Ӻ�ʼ" )
		return
	end

	if 6 == step then
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս��4���Ӻ�ʼ" )
		return
	end

	if 5 == step then
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս��3���Ӻ�ʼ" )
		return
	end

	if 4 == step then
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս��2���Ӻ�ʼ" )
		return
	end

	if 3 == step then
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս��1���Ӻ�ʼ" )
		return
	end

	if 2 == step then
		--��ʾս����ʼ....
		CallScriptFunction( x402077_g_FuBenScriptId, "TipAllHuman", sceneId, "ս����ʼ" )
		--ɾ��NPC....
--		CallScriptFunction( x402077_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
--		CallScriptFunction( x402077_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa1_BOSS", -1, -1 )
		return
	end

end
end