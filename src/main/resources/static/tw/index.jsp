<%@ page contentType="text/html;charset=gb2312" %>
<%
	/********************************************************************
	*	Title:            ˮ�� v
	*	Description :     ˮ��JSP����̽��
	*	CopyRight:(c) 2005 http://bbs.iaiai.com
	*	@author:	      ˮ��
	*	@version:	      1.0
	*	@Data:	          2005-4-14
	*********************************************************************/

  long ��ʼʱ�� = System.currentTimeMillis();

  class ˮ����{
    private String ����IP, ��������, �������˿�, ����ϵͳ, ����ϵͳ����, ����ϵͳģʽ, ���������ڵ���, ����������, ������ʱ��, ������ʱ��;
	private String ��ǰ�û�, �û�Ŀ¼, ���ļ�ʵ��·��;
	private String JAVA���л�������, JAVA���л����汾, JAVA���л���˵��������, JAVA���л���˵����汾, JAVA���������, JAVA������汾;
	private String JAVA�����˵��������, JAVA�����˵����汾, JAVA�����ʣ���ڴ�;
	private String java_class_path, java_home, java_endorsed_dirs, java_library_path, java_io_tmpdir;
	public java.util.Properties ��ѯ����;
	private java.util.Properties  ���еĻ�������, �������;
	
	public void ˮ����(){
	  ����IP = "localhost";
	  �������˿� = "80";
	}
	public String ��������(){
	  long ��ʼ = System.currentTimeMillis();
	  int ���� = 0;
	  while( ���� < 3000000 ) ����++;
	  long ���� = System.currentTimeMillis();
	  long ��ֵ = ���� - ��ʼ;
	  
	  return String.valueOf( ��ֵ );
	}
	public String ��������(){
	  long ��ʼ = System.currentTimeMillis();
	  int ���� = 0;
	  double ����� = (double)new java.util.Random().nextInt( 1000 );
	  while( ���� < 200000 ){
	    ����� = Math.sqrt( ����� );
		����++;
	  }
	  long ���� = System.currentTimeMillis();
	  long ��ֵ = ���� - ��ʼ;
	  return String.valueOf( ��ֵ );
	}
	private void set����IP( String ����IP ){
	  this.����IP = ����IP;
    }
	public String get����IP(){
	  return ����IP;
	}
	private void set��������( String �������� ){
	  this.�������� = ��������;
    }
	public String get��������(){
	  return ��������;
	}
	private void set����ϵͳ( String ����ϵͳ ){
	  this.����ϵͳ = ����ϵͳ;
    }
	public String get����ϵͳ(){
	  return ����ϵͳ;
	}
	private void set�������˿�( String �������˿� ){
	  this.�������˿� = �������˿�;
	}
	public String get�������˿�(){
	  return �������˿�;
	}
	private void set����ϵͳ����( String ����ϵͳ���� ){
	  this.����ϵͳ���� = ����ϵͳ����;
	}
	public String get����ϵͳ����(){
	  return ����ϵͳ����;
	}
	private void set����ϵͳģʽ( String ����ϵͳģʽ ){
	  this.����ϵͳģʽ = ����ϵͳģʽ;
	}
	public String get����ϵͳģʽ(){
	  return ����ϵͳģʽ;
	}
	private void set���������ڵ���( String ���������ڵ��� ){
	  this.���������ڵ��� = ���������ڵ���;
	}
	public String get���������ڵ���(){
	  return ���������ڵ���;
	}
	private void set����������( String ���������� ){
	  this.���������� = ����������;
	}
	public String get����������(){
	  return ����������;
	}
	private void set������ʱ��( String ������ʱ�� ){
	  this.������ʱ�� = ������ʱ��;
	}
	public String get������ʱ��(){
	  return ������ʱ��;
	}
	public String get������ʱ��(){
	  return String.valueOf( new java.util.Date() );
	}
	public String get��������������(){
	  return getServletContext().getServerInfo();
	}
	private void set��ǰ�û�( String ��ǰ�û� ){
	  this.��ǰ�û� = ��ǰ�û�;
	}
	public String get��ǰ�û�(){
	  return ��ǰ�û�;
	}
	private void set�û�Ŀ¼( String �û�Ŀ¼ ){
	  this.�û�Ŀ¼ = �û�Ŀ¼;
	}
	public String get�û�Ŀ¼(){
	  return �û�Ŀ¼;
	}
	private void set���ļ�ʵ��·��( String ���ļ�ʵ��·�� ){
	  this.���ļ�ʵ��·�� = ���ļ�ʵ��·��;
	}
	public String get���ļ�ʵ��·��(){
	  return ���ļ�ʵ��·��;
	}
	private void setJAVA���л�������( String JAVA���л������� ){
	  this.JAVA���л������� = JAVA���л�������;
	}
	public String getJAVA���л�������(){
	  return JAVA���л�������;
	}
	private void setJAVA���л����汾( String JAVA���л����汾 ){
	  this.JAVA���л����汾 = JAVA���л����汾;
	}
	public String getJAVA���л����汾(){
	  return JAVA���л����汾;
	}
	private void setJAVA���л���˵��������( String JAVA���л���˵�������� ){
	  this.JAVA���л���˵�������� = JAVA���л���˵��������;
	}
	public String getJAVA���л���˵��������(){
	  return JAVA���л���˵��������;
	}
	private void setJAVA���л���˵����汾( String JAVA���л���˵����汾 ){
	  this.JAVA���л���˵����汾 = JAVA���л���˵����汾;
	}
	public String getJAVA���л���˵����汾(){
	  return JAVA���л���˵����汾;
	}
	private void setJAVA���������( String JAVA��������� ){
	  this.JAVA��������� = JAVA���������;
	}
	public String getJAVA���������(){
	  return JAVA���������;
	}
	public void set�������( ServletContext ������ ){
	  java.util.Enumeration ö�� = ������.getAttributeNames();
	  ������� = new java.util.Properties();
	  String ���� = "", ��Ϣ = "";
	  while( ö��.hasMoreElements() ){
	    ���� = String.valueOf( ö��.nextElement() );
		��Ϣ = String.valueOf( ������.getAttribute( ���� ) );
		��Ϣ = ��Ϣ.replaceAll( "jar;", "jar;" + "<br>" );
		��Ϣ = ��Ϣ.replaceAll( "classes/;", "classes/;" + "<br>" );
		�������.put( ����, ��Ϣ );
	  }
	}
	public java.util.Properties get�������(){
	  return �������;
	}
	private void setJAVA������汾( String JAVA������汾 ){
	  this.JAVA������汾 = JAVA������汾;
	}
	public String getJAVA������汾(){
	  return JAVA������汾;
	}
	private void setJAVA�����˵��������( String JAVA�����˵�������� ){
	  this.JAVA�����˵�������� = JAVA�����˵��������;
	}
	public String getJAVA�����˵��������(){
	  return JAVA�����˵��������;
	}
	private void setJAVA�����˵����汾( String JAVA�����˵����汾 ){
	  this.JAVA�����˵����汾 = JAVA�����˵����汾;
	}
	public String getJAVA�����˵����汾(){
	  return JAVA�����˵����汾;
	}
	public float getJAVA�����ʣ���ڴ�(){
	  return (float)Runtime.getRuntime().freeMemory()/1024/1024;
	}
	public float getJAVA����������ڴ�(){
	  return (float)Runtime.getRuntime().totalMemory()/1024/1024;
	}
	public float getJAVA�����ʣ���ڴ�ٷֱ�(){
	  return getJAVA�����ʣ���ڴ�()/getJAVA����������ڴ�()*100;
	}
	private void setJava_class_path( String java_class_path ){
	  this.java_class_path = java_class_path;
	}
	public String getJava_class_path(){
	  return java_class_path;
	}
	private void setJava_home( String java_home ){
	  this.java_home = java_home;
	}
	public String getJava_home(){
	  return java_home;
	}
	private void setJava_endorsed_dirs( String java_endorsed_dirs ){
	  this.java_endorsed_dirs = java_endorsed_dirs;
	}
	public String getJava_endorsed_dirs(){
	  return java_endorsed_dirs;
	}
	private void setJava_library_path( String java_library_path ){
	  this.java_library_path = java_library_path;
	}
	public String getJava_library_path(){
	  return java_library_path;
	}
	private void setJava_io_tmpdir( String java_io_tmpdir ){
	  this.java_io_tmpdir = java_io_tmpdir;
	}
	public String getJava_io_tmpdir(){
	  return java_io_tmpdir;
	}
	public void set���еĻ�������(){
	  ���еĻ������� = System.getProperties();
	}
	public void ������ѯ( String ���� ){
	  ��ѯ���� = new java.util.Properties();
	  java.util.Enumeration ö�� = ���еĻ�������.propertyNames();
	  String ���� = "", ��Ϣ = "";
	  
      while( ö��.hasMoreElements() ){
		���� = String.valueOf( ö��.nextElement() );
		if( ����.indexOf( ����, 0 ) >= 0 )
	      ��ѯ����.put( ����, String.valueOf( ���еĻ�������.get( ���� ) ) );
	  }
	}
	
	public void ����( javax.servlet.http.HttpServletRequest �Ự ){
	  try{
	    ˮ����();
	    java.util.Properties ���� = System.getProperties();
	
		set��������( �Ự.getServerName() );
		set����IP( �Ự.getRemoteAddr() );
		set�������˿�( String.valueOf( �Ự.getServerPort() ) );
		set����ϵͳ( String.valueOf( ����.get( "os.name" ) ) + " " + String.valueOf( ����.get( "os.version" ) ) );
		set����ϵͳ����( String.valueOf( ����.get( "os.arch" ) ) );
		set����ϵͳģʽ( String.valueOf( ����.get( "sun.arch.data.model" ) ) + "λ" );
		set���������ڵ���( String.valueOf( ����.get( "user.country" ) ) );
		set����������( String.valueOf( ����.get( "user.language" ) ) );
		set������ʱ��( String.valueOf( ����.get( "user.timezone" ) ) );
		set��ǰ�û�( String.valueOf( ����.get( "user.name" ) ) );
		set�û�Ŀ¼( String.valueOf( ����.get( "user.dir" ) ) );
		set���ļ�ʵ��·��( �Ự.getRealPath( �Ự.getServletPath() ) );
		setJAVA���л�������( String.valueOf( ����.get( "java.runtime.name" ) ) );
		setJAVA���л����汾( String.valueOf( ����.get( "java.runtime.version" ) ) );
		setJAVA���л���˵��������( String.valueOf( ����.get( "java.specification.name" ) ) );
		setJAVA���л���˵����汾( String.valueOf( ����.get( "java.specification.version" ) ) );
		setJAVA���������( String.valueOf( ����.get( "java.vm.name" ) ) );
		setJAVA������汾( String.valueOf( ����.get( "java.vm.version" ) ) );
		setJAVA�����˵��������( String.valueOf( ����.get( "java.vm.specification.name" ) ) );
		setJAVA�����˵����汾( String.valueOf( ����.get( "java.vm.specification.version" ) ) );
		setJava_class_path( String.valueOf( ����.get( "java.class.path" ) ).replaceAll( String.valueOf( ����.get( "path.separator" ) ), String.valueOf( ����.get( "path.separator" ) ) + "<br>" ) );
		setJava_home( String.valueOf( ����.get( "java.home" ) ) );
		setJava_endorsed_dirs( String.valueOf( ����.get( "java.endorsed.dirs" ) ) );
		setJava_library_path( String.valueOf( ����.get( "java.library.path" ) ).replaceAll( String.valueOf( ����.get( "path.separator" ) ), String.valueOf( ����.get( "path.separator" ) ) + "<br>" ) );
		setJava_io_tmpdir( String.valueOf( ����.get( "java.io.tmpdir" ) ) );
	  }catch( Exception ���� ){
	    System.err.println( "ˮ��̽����ִ���->" + ����.getMessage() );
	  }
    }
  }
  
  ˮ���� ˮ�� = new ˮ����();
  ˮ��.����( request );
%>
<html>
  <head>
    <title>jsp̽��</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <style>
      A       { COLOR: #000000; TEXT-DECORATION: none}
      A:hover { COLOR: #f58200}
      body,td,span { font-size: 9pt}
      .input  { BACKGROUND-COLOR: #E3F1D1;BORDER:#A9D46D 1px solid;FONT-SIZE: 9pt}
      .backc  { BACKGROUND-COLOR: #E3F1D1;BORDER:#A9D46D 1px solid;FONT-SIZE: 9pt;color:#000000;}
      .PicBar { background-color: #A9D46D; border: 1px solid #ffffff; height: 12px;}
      .tableBorder {BORDER-RIGHT: #84BE3C 1px solid; BORDER-TOP: #84BE3C 1px solid; BORDER-LEFT: #84BE3C 1px solid; BORDER-BOTTOM: #84BE3C 1px solid; BACKGROUND-COLOR: #ffffff; WIDTH: 760;}
      .divcenter {
        position:absolute;
        height:30px;
        z-index:1000;
        left: 101px;
        top: 993px;
      }
      .InnerHead {
	    background-color: #E3F1D1;
	    border-top-width: 1px;
	    border-right-width: 0px;
	    border-bottom-width: 0px;
	    border-left-width: 1px;
	    border-top-style: solid;
	    border-right-style: solid;
	    border-bottom-style: solid;
	    border-left-style: solid;
	    border-top-color: #FFFFFF;
	    border-right-color: #FFFFFF;
	    border-bottom-color: #FFFFFF;
	    border-left-color: #FFFFFF;
	    text-align: left;
	    padding-left: 10px;
		padding-top: 3px;
      }
      .InnerTable {
	    background-color: #A9D46D;
      }
      .InnerMain {
	    background-color: #FFFFFF;
	    padding-left: 10px;
		padding-top: 3px;
      }
      .InnerQuery {
	    background-color: #FFFFFF;
	    padding-left: 10px;
		padding-top: 3px;
		padding-bottom: 3px;
      }
    </STYLE>
    <script language="javascript">
      function showsubmenu( sid ){
        whichEl = eval( "submenu" + sid );
        if( whichEl.style.display == "none" ){
          eval( "submenu" + sid + ".style.display=\"\";" );
          eval( "txt" + sid + ".innerHTML=\"<a href='#' onclick='showsubmenu(" + sid + ")' title='�رմ���'><font color=#FFFFFF>��</font></a>\";" );
        }else{
          eval( "submenu" + sid + ".style.display=\"none\";" );
          eval( "txt" + sid + ".innerHTML=\"<a href='#' onclick='showsubmenu(" + sid + ")' title='�򿪴���'><font color=#FFFFFF>��</font></a>\";" );
        }
      }
    </SCRIPT>
  </head>
  <body topmargin="0" background="images/bgcolor.gif">
  <table width="760" border="0" cellpadding="0" cellspacing="0" align="center">
    <tr>
      <td><img src="images/logo.gif"></td>
    </tr>
  </table>
  <table width="760" height="20" border="0" cellpadding="0" cellspacing="0" align="center">
    <tr>
	  <td align="center">
	    ѡ�<a href="#ServerInfo">��������ز���</a> |
		<a href="#JAVAInfo">JAVA��ز���</a> |
		<a href="#Paramter">������ѯ</a>  |
		<a href="#ServerAbility">��������������</a>  |
		<a href="#ISpeedTest">�����������ٶ�</a>  |
	    <a href="javascript:location.reload()">ˢ��</a>
	    <a name="ServerInfo"></a>
	  </td>
	</tr>
  </table>
  <table border="0" align="center" cellpadding="0" cellspacing="1" class="tableBorder">
    <tr>
	  <td background="images/h.gif" height="20">
	    <table border=0 width=100% cellspacing=1 cellpadding=3>
		  <tr>
		    <td height="20" width="70%">
			  <font color=#FFFFFF><strong>��������ز���</strong></font>
			</td>
			<td width="30%" align="right">
		      <a href="#top" title="���ض���"><font color=#FFFFFF>TOP</font></a>
			  <span id=txt0 name=txt0><a href='#' onclick="showsubmenu(0)" title='�رմ���'><font color=#FFFFFF>��</font></a></span>
			</td>
		  </tr>
		</table>
	  </td>
	</tr>
	<tr id=submenu0>
	  <td>
	    <table border=0 width=100% cellspacing=1 cellpadding=0 class="InnerTable">
		  <tr>
		    <td width="141" height="20" class="InnerHead">��������</td>
            <td colspan="3" class="InnerMain"><%=ˮ��.get��������()%>(<%=ˮ��.get����IP()%>)</td>
		  </tr>
		  <tr>
		    <td width="141" height="20" class="InnerHead">����������ϵͳ</td>
            <td colspan="3" class="InnerMain"><%=ˮ��.get����ϵͳ()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerHead">����������ϵͳ����</td>
            <td class="InnerMain"><%=ˮ��.get����ϵͳ����()%></td>
		    <td class="InnerHead">����������ϵͳģʽ</td>
		    <td class="InnerMain"><%=ˮ��.get����ϵͳģʽ()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerHead">���������ڵ���</td>
            <td class="InnerMain"><%=ˮ��.get���������ڵ���()%></td>
		    <td class="InnerHead">����������</td>
		    <td class="InnerMain"><%=ˮ��.get����������()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerHead">������ʱ��</td>
            <td class="InnerMain"><%=ˮ��.get������ʱ��()%></td>
		    <td class="InnerHead">������ʱ��</td>
		    <td class="InnerMain"><%=ˮ��.get������ʱ��()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerHead">��������������</td>
            <td class="InnerMain"><%=ˮ��.get��������������()%></td>
		    <td class="InnerHead">�������˿�</td>
		    <td class="InnerMain"><%=ˮ��.get�������˿�()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerHead">��ǰ�û�</td>
            <td colspan="3" class="InnerMain"><%=ˮ��.get��ǰ�û�()%></td>
	      </tr>
		  <tr>
		    <td height="20" class="InnerHead">�û�Ŀ¼</td>
            <td colspan="3" class="InnerMain"><%=ˮ��.get�û�Ŀ¼()%></td>
	      </tr>
		  <tr>
		    <td height="20" class="InnerHead">���ļ�ʵ��·��</td>
            <td colspan="3" class="InnerMain"><%=ˮ��.get���ļ�ʵ��·��()%></td>
	      </tr>
		</table>
	  </td>
	</tr>
  </table>
  <a name="JAVAInfo" id="JAVAInfo"></a><br>
  <table border="0" align="center" cellpadding="0" cellspacing="1" class="tableBorder">
    <tr>
	  <td background="images/h.gif">
	    <table border=0 width=100% cellspacing=1 cellpadding=3>
		  <tr>
		    <td height="20" width="70%">
			  <font color=#FFFFFF><strong>JAVA��ز���</strong></font>
			</td>
			<td width="30%" align="right">
		      <a href="#top" title="���ض���"><font color=#FFFFFF>TOP</font></a>
			  <span id=txt1 name=txt1><a href='#' onclick="showsubmenu(1)" title='�رմ���'><font color=#FFFFFF>��</font></a></span>
			</td>
		  </tr>
		</table>
	  </td>
	</tr>
	<tr id=submenu1>
	  <td>
	    <table border=0 width=100% cellspacing=1 cellpadding=0 class="InnerTable">
		  <tr>
		    <td height="20" width="30%" class="InnerHead">����</td>
		    <td class="InnerHead" width="50%">Ӣ������</td>
		    <td class="InnerHead" width="20%">�汾</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">JAVA���л�������</td>
			<td class="InnerMain"><%=ˮ��.getJAVA���л�������()%></td>
			<td class="InnerMain"><%=ˮ��.getJAVA���л����汾()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">JAVA���л���˵��������</td>
			<td class="InnerMain"><%=ˮ��.getJAVA���л���˵��������()%></td>
			<td class="InnerMain"><%=ˮ��.getJAVA���л���˵����汾()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">JAVA���������</td>
			<td class="InnerMain"><%=ˮ��.getJAVA���������()%></td>
			<td class="InnerMain"><%=ˮ��.getJAVA������汾()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">JAVA�����˵��������</td>
			<td class="InnerMain"><%=ˮ��.getJAVA�����˵��������()%></td>
			<td class="InnerMain"><%=ˮ��.getJAVA�����˵����汾()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">JAVA�����ʣ���ڴ�</td>
			<td colspan="2" class="InnerMain"><img align=absmiddle class=PicBar width='<%=ˮ��.getJAVA�����ʣ���ڴ�ٷֱ�()%>%'> <%=ˮ��.getJAVA�����ʣ���ڴ�()%>M</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">JAVA����������ڴ�</td>
			<td colspan="2" class="InnerMain"><img align=absmiddle class=PicBar width='85%'> <%=ˮ��.getJAVA����������ڴ�()%>M</td>
		  </tr>
		  <tr>
		    <td height="20" width="30%" class="InnerHead">��������</td>
		    <td colspan="2" class="InnerHead">����·��</td>
	      </tr>
		  <tr>
		    <td height="20" class="InnerMain">java.class.path</td>
			<td colspan="2" class="InnerMain"><%=ˮ��.getJava_class_path()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">java.home</td>
			<td colspan="2" class="InnerMain"><%=ˮ��.getJava_home()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">java.endorsed.dirs</td>
			<td colspan="2" class="InnerMain"><%=ˮ��.getJava_endorsed_dirs()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">java.library.path</td>
			<td colspan="2" class="InnerMain"><%=ˮ��.getJava_library_path()%></td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">java.io.tmpdir</td>
			<td colspan="2" class="InnerMain"><%=ˮ��.getJava_io_tmpdir()%></td>
		  </tr>
		  <tr>
		    <td height="20" width="30%" class="InnerHead">Context attributes (�������)</td>
		    <td colspan="2" class="InnerHead">����·��</td>
	      </tr>
		  <%
		    ˮ��.set�������( getServletContext() );
			java.util.Properties ������� = ˮ��.get�������();
			java.util.Enumeration ö������ = �������.propertyNames();
			String ����������� = "";
			while( ö������.hasMoreElements() ){
			  ����������� = String.valueOf( ö������.nextElement() );
		  %>
		  <tr>
		    <td height="20" class="InnerMain"><%=�����������%></td>
			<td colspan="2" class="InnerMain"><%=�������.get( ����������� )%></td>
		  </tr>
		  <%}%>
		</table>
	  </td>
	</tr>
  </table>
  <a name="Paramter" id="Paramter"></a>
  <form action="?action=query" method="post" name="queryform">
  <table border="0" align="center" cellpadding="0" cellspacing="1" class="tableBorder">
    <tr>
	  <td background="images/h.gif">
	    <table border=0 width=100% cellspacing=1 cellpadding=3>
		  <tr>
		    <td height="20" width="70%"><font color=#FFFFFF><strong>������ѯ</strong></font></td>
		    <td width="30%" align="right">
		      <a href="#top" title="���ض���"><font color=#FFFFFF>TOP</font></a>
			  <span id=txt2 name=txt2><a href='#' onclick="showsubmenu(2)" title='�رմ���'><font color=#FFFFFF>��</font></a></span>
			</td>
		  </tr>
		</table>
	  </td>
	</tr>
	<tr id=submenu2>
	  <td>
	    <table border=0  width=100% cellspacing=1 cellpadding=0 class="InnerTable">
		  <tr>
		    <td height="20" colspan="2" class="InnerHead">���ѯϵͳ�Ĳ�����Ϣ(<a href="javascript:queryform.query.value='';document.queryform.submit();">ö�����в�����Ϣ</a>)</td>
		  </tr>
		  <tr>
		    <td height="20" colspan="2" align="center" class="InnerQuery">
			  <input type="text" name="query" class="input" size="70">&nbsp;&nbsp;
			  <input type="submit" value="�� ��" class="backc">&nbsp;
			  <input type="reset" value="�� ��" class="backc">
			</td>
		  </tr>
		  <%
		    if( request.getParameter( "action" ) != null && request.getParameter( "action" ).equals( "query" ) ){
		      if( request.getParameter( "query" ) != null ){
			    ˮ��.set���еĻ�������();
			    String ������ѯ = request.getParameter( "query" );
			    ˮ��.������ѯ( ������ѯ );
			    if( ˮ��.��ѯ����.size() > 0 ){
		  %>
		  <tr>
		    <td width="30%" height="20" align="center" class="InnerHead">��������</td>
		    <td width="70%" align="center" class="InnerHead">������Ϣ</td>
		  </tr>
		  <%
		        }else{
		  %>
		  <tr>
		    <td width="30%" height="20" align="center" class="InnerHead"><font color=red>������Ϣ��</font></td>
		    <td width="70%" align="center" class="InnerHead"><font color=red>û���ҵ�������ѯ�����ݣ���������Ҫ��ѯ�Ĳ����������ȷ�ϣ����Խ��г����ѯ��������������ĸ��</font></td>
		  </tr>
		  <%
			    }
			    java.util.Enumeration ö�� = ˮ��.��ѯ����.propertyNames();
			    String ���� = "", ��Ϣ = "";
			    while( ö��.hasMoreElements() ){
			      ���� = String.valueOf( ö��.nextElement() );
				  ��Ϣ = String.valueOf( ˮ��.��ѯ����.get( ���� ) );
				  if( ����.indexOf( ".path", 0 ) >= 0 )
				    ��Ϣ = ��Ϣ.replaceAll( String.valueOf( ˮ��.��ѯ����.get( "path.separator" ) ), String.valueOf( ˮ��.��ѯ����.get( "path.separator" ) ) + "<br>" );
		  %>
		  <tr>
		    <td width="30%" height="20" align="left" class="InnerQuery"><%=����%></td>
		    <td width="70%" align="left" class="InnerQuery"><%=��Ϣ%></td>
		  </tr>
		  <%
			    }
		      }
	      %>
		  <%}%>
		</table>
	  </td>
	</tr>
  </table>
  </form>
  <a name="ServerAbility" id="ServerAbility"></a>
  <table border="0" align="center" cellpadding="0" cellspacing="1" class="tableBorder">
    <tr>
	  <td background="images/h.gif">
	    <table border=0 width=100% cellspacing=1 cellpadding=3>
		  <tr>
		    <td height="20" width="85%">
			  <font color=#FFFFFF><strong>��������������</strong></font>
			  ���÷�����ִ��300��μӷ�(<font color="#000000">��������</font>)��20��ο���(��������)����¼����ʹ�õ�ʱ�䡣
			</td>
		    <td width="15%" align="right">
		      <a href="#top" title="���ض���"><font color=#FFFFFF>TOP</font></a>
			  <span id=txt3 name=txt3><a href='#' onclick="showsubmenu(3)" title='�رմ���'><font color=#FFFFFF>��</font></a></span>
			</td>
		  </tr>
		</table>
	  </td>
	</tr>
	<tr id=submenu3>
	  <td>
	    <table border=0 width=100% cellspacing=1 cellpadding=0 class="InnerTable">
		  <tr>
		    <td height="20" class="InnerHead">�ɹ��ο��ķ������б�</td>
		    <td class="InnerHead">��������</td>
		    <td class="InnerHead">��������</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">��˾�ĵ���&nbsp;(CPU:Celeron 1G&nbsp; �ڴ�:256M)</td>
		    <td height="20" class="InnerMain">60 ����</td>
		    <td height="20" class="InnerMain">70 ����</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">����ĵ���&nbsp;(CPU:Duron 1G&nbsp; �ڴ�:384M)</td>
		    <td height="20" class="InnerMain">20 ����</td>
		    <td height="20" class="InnerMain">10 ����</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">�й����۷�����&nbsp;(CPU:Intel Pentium III 1G �ڴ�:768M)</td>
		    <td height="20" class="InnerMain">20 ����</td>
		    <td height="20" class="InnerMain">3 ����</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">IBM���ֲ�&nbsp;(CPU:IIntel(R) Celeron(R) CPU 1.70G �ڴ�:256M)</td>
		    <td height="20" class="InnerMain">3 ����</td>
		    <td height="20" class="InnerMain">7 ����</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerQuery" align="left"><font color=red>������ʹ�õ���̨������</font>&nbsp; <INPUT name="button" type="button" class=backc onclick="javascript:location.reload()" value="���²���"></td>
		    <td height="20" class="InnerMain"><%=ˮ��.��������()%> ����</td>
		    <td height="20" class="InnerMain"><%=ˮ��.��������()%> ����</td>
		  </tr>
		</table>
	  </td>
	</tr>
  </table>
  <a name="ISpeedTest" id="ISpeedTest"></a><br>
  <table border="0" align="center" cellpadding="0" cellspacing="1" class="tableBorder">
    <tr>
	  <td background="images/h.gif">
	    <table border=0 width=100% cellspacing=1 cellpadding=3>
		  <tr>
		    <td height="20" width="70%"><font color=#FFFFFF><strong>�����������ٶ�</strong></font></td>
		    <td width="30%" align="right">
		      <a href="#top" title="���ض���"><font color=#FFFFFF>TOP</font></a>
			  <span id=txt4 name=txt4><a href='#' onclick="showsubmenu(4)" title='�رմ���'><font color=#FFFFFF>��</font></a></span>
			</td>
		  </tr>
		</table>
	  </td>
	</tr>
	<tr id=submenu4>
	  <td>
	    <table border=0 width=100% cellspacing=1 cellpadding=0 class="InnerTable">
		  <tr>
		    <td height="20" width="80" class="InnerHead">�����豸</td>
		    <td width="420" class="InnerHead">�����ٶ�(����ֵ)</td>
		    <td width="100" class="InnerHead">�����ٶ�(����ֵ)</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">56k Modem</td>
			<td class="InnerMain"><img align=absmiddle class=PicBar width='1%'> 56 Kbps</td>
			<td class="InnerMain">7.0 k/s</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">64k ISDN</td>
			<td class="InnerMain"><img align=absmiddle class=PicBar width='1%'> 64 Kbps</td>
			<td class="InnerMain">8.0 k/s</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">512k ADSL</td>
			<td class="InnerMain"><img align=absmiddle class=PicBar width='5%'> 512 Kbps</td>
			<td class="InnerMain">64.0 k/s</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">1.5M Cable</td>
			<td class="InnerMain"><img align=absmiddle class=PicBar width='15%'> 1500 Kbps</td>
			<td class="InnerMain">187.5 k/s</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">5M FTTP</td>
			<td class="InnerMain"><img align=absmiddle class=PicBar width='50%'> 5000 Kbps</td>
			<td class="InnerMain">625.0 k/s</td>
		  </tr>
		  <tr>
		    <td height="20" class="InnerMain">��ǰ�����ٶ�</td>
			<%
			  if( request.getParameter( "action" ) != null && request.getParameter( "action" ).equals( "SpeedTest" ) ){
			    out.println( "<script language='JavaScript'>var tSpeedStart=new Date();</script>" );
				out.println( "<!--\n" );
				for( int i = 0; i < 1000; i++ ){ out.println( "####################################################################################################" ); }
				out.println( "-->\n" );
				out.println( "<script language='JavaScript'>var tSpeedEnd=new Date();</script>\n" );
				out.println( "<script language='JavaScript'>" );
				out.println( "var iSpeedTime = 0; iSpeedTime = ( tSpeedEnd - tSpeedStart ) / 1000;" );
				out.println( "if( iSpeedTime > 0 ) iKbps = Math.round( Math.round( 100 * 8 / iSpeedTime * 10.5 ) / 10 ); else iKbps = 10000 ;" );
				out.println( "var iShowPer = Math.round( iKbps / 100 );" );
				out.println( "if( iShowPer < 1 ) iShowPer = 1;  else if( iShowPer > 82 )   iShowPer = 82;" );
				out.println( "</script>\n" );
				out.println( "<script language='JavaScript'>" );
				out.println( "document.write('<td class=InnerMain><img align=absmiddle class=PicBar width=\"' + iShowPer + '%\">' + iKbps + ' Kbps');" );
				out.println( "</script>\n" );
				out.println( "</td><td class=InnerMain>&nbsp;<a href='?action=SpeedTest' title=���������ٶ�><u>" );
				out.println( "<script language='JavaScript'>" );
				out.println( "document.write( Math.round( iKbps / 8 * 10 ) / 10 + ' k/s' );" );
				out.println("</script>\n") ;
				out.println("</u></a></td>");
			%>
			<%}else{%>
			<td class="InnerMain">&nbsp;</td>
			<td class="InnerMain"><a href='?action=SpeedTest' title=���������ٶ�><u>��ʼ����</u></a></td>
			<%}%>
		  </tr>
		</table>
	  </td>
	</tr>
  </table>
  <%
    long ����ʱ�� = System.currentTimeMillis();
  %>
  <br><hr size="1px" width=760 />
  <center>
    Copyright<sup>&copy;</sup>
    <a href="http://bbs.iaiai.com" target="_blank">Water-Season</a> do. 2005-2005<br>
	ҳ��ִ��ʱ�䣺Լ<%=����ʱ��-��ʼʱ��%>���� ˮ��JSP̽�� V1.1
  </center><br>
  </body>
</html>