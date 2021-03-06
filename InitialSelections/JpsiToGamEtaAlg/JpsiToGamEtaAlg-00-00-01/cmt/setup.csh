# echo "setup JpsiToGamEtaAlg JpsiToGamEtaAlg-00-00-01 in /afs/ihep.ac.cn/users/y/yuanxq/higgs/workArea/704"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/ihep.ac.cn/bes3/offline/ExternalLib/SLC6/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtJpsiToGamEtaAlgtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtJpsiToGamEtaAlgtempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=JpsiToGamEtaAlg -version=JpsiToGamEtaAlg-00-00-01 -path=/afs/ihep.ac.cn/users/y/yuanxq/higgs/workArea/704  -no_cleanup $* >${cmtJpsiToGamEtaAlgtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt setup -csh -pack=JpsiToGamEtaAlg -version=JpsiToGamEtaAlg-00-00-01 -path=/afs/ihep.ac.cn/users/y/yuanxq/higgs/workArea/704  -no_cleanup $* >${cmtJpsiToGamEtaAlgtempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtJpsiToGamEtaAlgtempfile}
  unset cmtJpsiToGamEtaAlgtempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtJpsiToGamEtaAlgtempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtJpsiToGamEtaAlgtempfile}
unset cmtJpsiToGamEtaAlgtempfile
exit $cmtsetupstatus

