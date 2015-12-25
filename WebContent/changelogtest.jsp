<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        table{
            width:80%;
        }

        tr,td{
            border:1px solid #eeeeee;
            margin:0px;
            padding:10px 20px;
            font-size:12px;
        }

        th{
            border:1px solid #55616D;
            text-align:center;
            background-color:#5bc0de;
            padding:5px 10px;
            color:#fff;
            background-color:#55616D;
        }
    </style>
</head>
<body>
	<table boder="1" cellpadding="0" cellspacing="0" >
		<tr>
            <th>仓库</th>
            <th>行为</th>
            <th>名称</th>
            <th>版本</th>
            <th colspan="2">描述</th>
        </tr>
        <c:forEach items="${resultLlist}" var="changelog">
        	 <tr>
	            <td rowspan="0">${changelog.repertory} </td>
	            <td rowspan="0">${changelog.action}</td>
	            <td>${changelog.name}</td>
	            <td>${changelog.version}</td>
	            <td colspan="0">${changelog.desction}</td>
	        </tr>
        </c:forEach>
	</table>
	
	<hr />
	
    <table boder="1" cellpadding="0" cellspacing="0" >
        <tr>
            <th>仓库</th>
            <th>行为</th>
            <th>名称</th>
            <th>版本</th>
            <th colspan="2">描述</th>
        </tr>
        <tr>
            <td rowspan="8">updates</td>
            <td rowspan="4">added</td>
            <td>fcoe-utils-1.0.29-9.1.el7_1</td>
            <td>1.0.29</td>
            <td colspan="2">Fibre Channel over Ethernet utilities</td>
        </tr>
        <tr>
            <td>gmp-6.0.0-12.el7_1</td>
            <td>6.0.0</td>
            <td colspan="2">A GNU arbitrary precision library</td>
        </tr>
        <tr>
            <td>gmp-devel-6.0.0-12.el7_1</td>
            <td>6.0.0</td>
            <td colspan="2">Development tools for the GNU MP </td>
        </tr>
        <tr>
            <td>gmp-static-6.0.0-12.el7_1</td>
            <td>6.0.0</td>
            <td colspan="2">Development tools for the GNU MP arbitrary precision library</td>
        </tr>
        <tr>
            <td rowspan="4">updated</td>
            <td>389-ds-base-devel-1.3.3.1-23.el7_1</td>
            <td>1.3.3.1</td>
            <td colspan="2">
                * Thu Sep 24 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-23
                - release 1.3.3.1-23
                - Resolves: bug 1262363 - In MMR, double free coould occur under some
                special condition (DS 48226)

                * Fri Sep 11 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-22
                - release 1.3.3.1-22
                - Resolves: bug 1262363 - In MMR, double free coould occur under some
                special condition (DS 48226)

                * Tue Sep 08 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-21
                - release 1.3.3.1-21
                - Resolves: bug 1258318 - Deadlock with retrochangelog, memberof plugin (DS
                47931)
                - Resolves: bug 1259466 - Enhance ACIs to have more control over MODRDN
                operations (DS 47553)
                - Resolves: bug 1259999 - Some filters in RHDS10 are not working fine. (DS
                48265)
                - Resolves: bug 1260000 - handling of "No original_tombstone for
                changenumber" errors (DS 47912)
                - Resolves: bug 1260001 - cleanallruv should completely clean changelog (DS
                48208)

            </td>
        </tr>
        <tr>
            <td>389-ds-base-libs-1.3.3.1-23.el7_1</td>
            <td>1.3.3.1</td>
            <td colspan="2">
                * Thu Sep 24 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-23
                - release 1.3.3.1-23
                - Resolves: bug 1262363 - In MMR, double free coould occur under some
                special condition (DS 48226)

                * Fri Sep 11 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-22
                - release 1.3.3.1-22
                - Resolves: bug 1262363 - In MMR, double free coould occur under some
                special condition (DS 48226)

                * Tue Sep 08 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-21
                - release 1.3.3.1-21
                - Resolves: bug 1258318 - Deadlock with retrochangelog, memberof plugin (DS
                47931)
                - Resolves: bug 1259466 - Enhance ACIs to have more control over MODRDN
                operations (DS 47553)
                - Resolves: bug 1259999 - Some filters in RHDS10 are not working fine. (DS
                48265)
                - Resolves: bug 1260000 - handling of "No original_tombstone for
                changenumber" errors (DS 47912)
                - Resolves: bug 1260001 - cleanallruv should completely clean changelog (DS
                48208)
            </td>
        </tr>
        <tr>
            <td>device-mapper-multipath-0.4.9-77.el7_1.2</td>
            <td>0.4.9</td>
            <td colspan="2">
                * Thu Sep 24 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-23
                - release 1.3.3.1-23
                - Resolves: bug 1262363 - In MMR, double free coould occur under some
                special condition (DS 48226)

                * Fri Sep 11 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-22
                - release 1.3.3.1-22
                - Resolves: bug 1262363 - In MMR, double free coould occur under some
                special condition (DS 48226)

                * Tue Sep 08 2015 Noriko Hosoi <nhosoi@redhat.com> - 1.3.3.1-21
                - release 1.3.3.1-21
                - Resolves: bug 1258318 - Deadlock with retrochangelog, memberof plugin (DS
                47931)
                - Resolves: bug 1259466 - Enhance ACIs to have more control over MODRDN
                operations (DS 47553)
                - Resolves: bug 1259999 - Some filters in RHDS10 are not working fine. (DS
                48265)
                - Resolves: bug 1260000 - handling of "No original_tombstone for
                changenumber" errors (DS 47912)
                - Resolves: bug 1260001 - cleanallruv should completely clean changelog (DS
                48208)

            </td>
        </tr>
        <tr>
            <td>device-mapper-multipath-libs-0.4.9-77.el7_1.2</td>
            <td>0.4.9</td>
            <td colspan="2">
                * Wed Sep 30 2015 Benjamin Marzinski <bmarzins@redhat.com> 0.4.9-77.2
                - Add 0107-UPBZ-1254292-iscsi-targetname.patch
                * check for targetname iscsi sysfs value
                - Resolves: bz #1267131
            </td>
        </tr>
        <tr>
            <td rowspan="2">extras</td>
            <td rowspan="2">added</td>
            <td>centos-release-gluster37-1.0-4.el7.centos</td>
            <td>1.0</td>
            <td colspan="2">GlusterFS 3.7 packages from the CentOS Storage SIG repository</td>
        </tr>
        <tr>
            <td>centos-release-storage-common-1-2.el7.centos</td>
            <td>1-2</td>
            <td colspan="2">Common release file to establish shared metadata for CentOS Storage SIG</td>
        </tr>
    </table>
</body>
</html>