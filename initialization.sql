-- INITIALIZATION WORKS --

BEGIN TRANSACTION;

-- TABLE INSTITUTE_LIST
CREATE TABLE INSTITUTE_LIST (
    "ID" TEXT PRIMARY KEY NOT NULL UNIQUE,
    "NAMES" TEXT NOT NULL,
    "SITES" TEXT NOT NULL,
    "LOCATIONS" TEXT NOT NULL,
    "SOURCES" TEXT NOT NULL,
    "PERSECUTION" TEXT NOT NULL,
    "EVIDENCES" TEXT NOT NULL,
    "CHECKED" TEXT NOT NULL
);

-- TABLE RELATED_ARTICLES
CREATE TABLE RELATED_ARTICLES (
    "ID" TEXT PRIMARY KEY NOT NULL UNIQUE,
    "TITLE" TEXT NOT NULL UNIQUE,
    "ORIGINAL" TEXT NOT NULL UNIQUE,
    "ARCHIVE" TEXT NOT NULL UNIQUE
);

-- CONSTRUCTED FROM INSTITUTE LIST OF VER 1.5.5
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'昭山素质教育','https://www.lzszjyxx.com/','湖南湘潭市岳塘区高峰村坳上组青少年素质教育学校','ASaferChina (channel)@Telegram','TRUE','https://web.archive.org/web/20231111060020/https://www.msn.com/en-au/news/other/inside-china-s-lgbtqia-re-education-camps-survivors-claim-shock-treatment-and-beatings/ar-AA18xfV9','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'贤德素质教育学校','http://www.aishangzs.com/ || http://texunschool.com/ || http://www.ahedu.net.cn/','湖南省长沙市','ASaferChina (channel)@Telegram','TRUE','https://web.archive.org/web/20231111060020/https://www.msn.com/en-au/news/other/inside-china-s-lgbtqia-re-education-camps-survivors-claim-shock-treatment-and-beatings/ar-AA18xfV9','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'北海市愉达复教育咨询有限公司','http://www.ydf-edu.com/','广西北海市银海区银滩风景区','ASaferChina (channel)@Telegram','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆锦辉青少年素质教育学校','http://www.cqtx110.com/','重庆市沙坪坝区中梁镇后槽路西50米','ASaferChina (channel)@Telegram','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'长沙湘越中学','https://www.xiangyuezhongxue.com/','湖南省长沙市长沙县春华镇春华山村','ASaferChina (channel)@Telegram','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'河源弘毅素质教育创新研究基地','http://www.ttxsjyjd.com/','广东省河源市紫金县义容镇西平村石下小学侧边办公楼','ASaferChina (channel)@Telegram','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'山东正心教育培训学校有限公司','http://www.zhengxinedu.com/','山东省潍坊市峡山区岞山街道岞山第二小学北邻','ASaferChina (channel)@Telegram || 寒涟漪创建的扭转机构名单','TRUE','https://web.archive.org/web/20231111060020/https://www.msn.com/en-au/news/other/inside-china-s-lgbtqia-re-education-camps-survivors-claim-shock-treatment-and-beatings/ar-AA18xfV9','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'睿智教育专门学校','http://www.999jwy.com/','长沙市望城区','ASaferChina (channel)@Telegram','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'徐州励志少年军校 || 徐州西正教育 || 徐州塑仁教育','https://weibo.com/u/5294085683/','UNKNOWN','ASaferChina (channel)@Telegram','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'雅圣思','(无法正常访问)http://www.yashengsi.com/','UNKNOWN','ASaferChina (channel)@Telegram','TRUE','https://www.voachinese.com/a/china-private-schools-accused-of-abusing-students-20230130/6939487.html','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'少林文武教育','http://www.shaolinxiao.com/','湖南娄底市水洞底镇中心村(距市政府8公里)','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'南华青少年素质教育学校','http://www.csnhjyxx.com/','长沙市望城区丁字派出所旁','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'严德教育','https://www.hngengwu.cn/','UNKNOWN','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'郑州思图励志教育学校','http://www.edandao.cn/','UNKNOWN','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'至善教育','https://www.pannijy.cn/','湖南省长沙市开福区沙坪湘绣小镇沙坪中学','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'新叶教育 || 广西玉林市新叶教育','https://ylsxyjy.com/','玉林校区: 广西玉林市仁东周村林园内','“相关证据”中所示报道 || 寒涟漪创建的扭转机构名单','TRUE','https://web.archive.org/web/20231111060020/https://www.msn.com/en-au/news/other/inside-china-s-lgbtqia-re-education-camps-survivors-claim-shock-treatment-and-beatings/ar-AA18xfV9','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'英高特素质教育学校','http://www.hnjwy.org.cn/','湖南省长沙市','“相关证据”中所示报道','TRUE','https://web.archive.org/web/20231111060020/https://www.msn.com/en-au/news/other/inside-china-s-lgbtqia-re-education-camps-survivors-claim-shock-treatment-and-beatings/ar-AA18xfV9','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'山东网康教育培训学校','http://www.jjerw.com/b/sdwkjypxxxwxevrs/','总部(市中校区): 二环南路3号','“相关证据”中所示报道','TRUE','https://web.archive.org/web/20231111060020/https://www.msn.com/en-au/news/other/inside-china-s-lgbtqia-re-education-camps-survivors-claim-shock-treatment-and-beatings/ar-AA18xfV9','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'长沙泽邦青少年培训学校','https://zebangedu.com/','湖南省长沙市长沙县安沙镇花桥村','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'武汉正苗启德叛逆期管教学校 || 正苗启德青少年特训学校 || 湖北正苗启德青少年特训学校','https://www.wangyinxuexiao.com/ || https://www.zmqd.cn/ || http://www.qidetexun.com.cn/','湖北省孝感市汉川市马口镇大咀村 || 湖北校区: 湖北省武汉市蔡甸与汉川交汇处(离汉川高铁站5公里) || 湖南校区: 湖南省长沙市开福区沙坪湘绣城启德励志教育学校 || 河南校区: 河南省郑州市巩义正苗启德教育学校 || 浙江校区: 浙江省丽水市缙云县启德特训学校','百度搜索 || 寒涟漪创建的扭转机构名单','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'黄冈纽特教育','UNKNOWN','黄冈市黄州区陈策楼镇王家岗教学点','寒涟漪创建的扭转机构名单','TRUE','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'武汉纽特青少年戒网瘾学校 || 纽特心理','http://www.jwyw.org/ || http://www.nt-edu.com/','湖北校区: 湖北省武汉市洪山区落雁路纽特学校(沙湖果批公交站对面)','百度搜索 || 寒涟漪创建的扭转机构名单','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'正德叛逆孩子学校 || 正德青少年管教学校','https://www.75tx.com/ || https://www.kashangkaxia.com/ || https://www.jiangnanxueyuan.com/','湖北省汉川市叛逆孩子学校 || 湖北省孝感市汉川市马口镇','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'西安重生素质教育学校 || 西安重生训练基地','https://sxhdcs.com/','西安市长安区杜曲镇西杨万村生产一路10号-西安重生青少年综合素质拓展基地 || 西安市长安区三府衙村西安重生综合训练基地','“相关证据”中所示知乎回答','UNKNOWN','https://www.zhihu.com/question/24332871/answer/549042493','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'华育农耕实践教育基地 || 重庆华育素质教育基地 || 重庆华励素质教育 || 重庆华育素质教育','https://www.hlszjy.com/','学校地址: 青少年农耕实践教育基地','“相关证据”中所示知乎回答','UNKNOWN','https://zhuanlan.zhihu.com/p/602713084','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'清德教育','http://www.qsn580.com/','长沙校区: 湖南长沙市望城区乔口镇; 湘潭校区: 湖南湘潭市岳塘区昭山镇; 岳阳校区: 岳阳市湘阴县岭北镇; 湖北校区: 湖北黄冈市黄州区; 安徽校区: 宣城市绩溪县','B站视频(BV1js4y1s7a1)的评论区','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'昆明丑小鸭中学','https://hhzedu.net/','昆明市宜良县匡远镇瑞星村','B站视频(BV1J84y1p7mr)的评论区','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'长沙县杰龙青少年特训学校 || 杰龙特训 || 杰龙青少年特训学校','http://csccjy.com/ || https://www.jielongtx.com/','长沙县江背镇乌川湖村','B站视频(BV1J84y1p7mr)的评论区 || 知乎搜索->https://zhuanlan.zhihu.com/p/550644396','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆胤呈青少年训练营','https://cqsztxy.com/','重庆市南川区文凤镇庆岩居委会','B站视频(BV1J84y1p7mr)的评论区','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'昆明安宁市好孩子教育培训学校','http://www.kmhhz.com/','昆明安宁市嵩华路4-28号','B站视频(BV1J84y1p7mr)的评论区','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'河南慧诺特国际教育','http://www.huinuote.com/','联系地址: 河南省郑州市新密市富民东路168号','B站视频(BV1J84y1p7mr)的评论区','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'启德青少年励志成长学校','http://www.shanghaitexun.org.cn/','总部地址: 湖南省长沙市区望城区','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'济南德泓教育','https://www.jndhjyzx.com/','地址: 山东省济南市','百度搜索->https://zhuanlan.zhihu.com/p/567280444','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'集结号青少年心理教育基地','http://www.jjhhrjyjd.com/','公司地址: 河南省漯河市市辖区城乡一体化示范区姬石镇罗庄小学99号','B站视频(BV1Aj411u7Dd)的评论区','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'广东麦田教育','https://www.gdmtjy.com/','学校坐落于广东省清远市清新区太平镇','网友私信 || 寒涟漪创建的扭转机构名单','TRUE','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'广州育明','http://www.yuming521.com/','中心地址: 广州市从化区鳌头镇中塘村98号(中塘村委旁原富力小学)','网友私信','UNKNOWN','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'引领星培训教育学校 || 引领星素质教育学校 || 团风引领星培训学校','http://www.ylxszjy.com/','地址: 黄冈市团风县淋山河镇泡树岗村','寒涟漪创建的扭转机构名单->DuckDuckGo搜索','TRUE','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'河南护航教育 || 河南护航青少年综合素质教育基地 || 护航学校','https://www.qianxuew.com/henanhuhangjiaoyu','新乡校区: 河南省新乡市原阳县白庙社区188号','寒涟漪创建的扭转机构名单','TRUE','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'岳阳市君山区善一培训学校有限公司','UNKNOWN','岳阳市君山区广兴洲镇黄安村','寒涟漪创建的扭转机构名单','TRUE','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'淄博德志学校','UNKNOWN','山东省淄博市桓台县团结路','寒涟漪创建的扭转机构名单','TRUE','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'河南省新密市伏羲山若水教育 || 若水教育基地','(无法正常访问)http://ruoshuids.com/','新密市伏羲山尖山村若水教育','寒涟漪创建的扭转机构名单 || (→)百度搜索','TRUE','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'上海关兴教育 || 上海市浦东新区关兴教育培训中心 || 上海关兴教育科技有限公司','https://www.shgxjy.com/','本培训中心座落于: 上海市浦东新区航头镇航都路12号','网友私信','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆市大足育新学校','http://www.cqyx999.com/','重庆市大足区团结路世纪阳光水岸东南侧约150米','https://twitter.com/IrohaS511/status/1641669213260759040','TRUE','PENDING','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'湖南省湘潭市岳塘区素质教育学校','(推测而得)http://www.hnqsnszjy.com/','(推测而得)湘潭市岳塘区青少年素质教育培训学校位于长株潭城市群中心区域位置—绿心昭山','https://twitter.com/Just_A_Mumei/status/1641026655366926338→百度搜索','TRUE','https://twitter.com/Just_A_Mumei/status/1641026655366926338','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'合肥新目标素质教育学校','(无法正常访问)http://www.ahxmb.com/','UNKNOWN','https://tieba.baidu.com/p/8311776125→百度搜索→https://tieba.baidu.com/p/8154831979','UNKNOWN','https://tieba.baidu.com/p/8154831979','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'宇凰德育 || 宇凰德育教育基地 || 湖北宇凰德育健康咨询有限公司','http://www.hbyhgxy.com/','地址: 湖北省武汉市江夏区乌龙泉街','https://tieba.baidu.com/p/8102952358→百度搜索','UNKNOWN','https://tieba.baidu.com/p/8102952358','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'湖南智优戒网瘾学校','UNKNOWN','UNKNOWN','知乎搜索->https://zhuanlan.zhihu.com/p/355502237','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'岳阳善一学校','(推测而得)(无法正常访问)http://www.yyshanyi.com/','UNKNOWN','https://tieba.baidu.com/p/8102952358→知乎搜索→https://zhuanlan.zhihu.com/p/355502237→DuckDuckGo搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆沙坪坝区歌乐山新启点兵仪素质教育中心','UNKNOWN','UNKNOWN','https://tieba.baidu.com/p/7582101377','UNKNOWN','https://tieba.baidu.com/p/7582101377','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'李锋教育','(推测而得)(无法正常访问)http://hnlfjy.com/','UNKNOWN','https://tieba.baidu.com/p/8118308647→百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'济南纳川 || 济南纳川心理教育咨询有限公司','http://www.ncxljy.com/','济南市市中区党家庄镇府对过','https://tieba.baidu.com/p/7426397676→百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'广西德馨励志教育|| 德馨励志教育 || 广西德馨励志教育文化传播有限公司','http://www.777jwy.com/','广西南宁市兴宁区长堽路四里113号; 分校: 广西壮族自治区河池市巴马县巴马镇赐福村江良屯广西德馨励志巴马分校(原江良小学)','https://tieba.baidu.com/p/7216862421→百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'西安弘毅网瘾戒除训练学校','UNKNOWN','UNKNOWN','https://tieba.baidu.com/p/7464866957','UNKNOWN','https://tieba.baidu.com/p/7464866957','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'成都赏美素质教育 || (→)都德尚美素质教育','(推测而得)(无法正常访问)http://www.cdsmjy.com/','UNKNOWN','https://tieba.baidu.com/p/7526480568→百度搜索→https://tieba.baidu.com/p/7526480568','UNKNOWN','https://zhuanlan.zhihu.com/p/601750315','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'成都精诚弘毅拓展训练公司','UNKNOWN','UNKNOWN','https://tieba.baidu.com/p/7526480568→百度搜索→https://tieba.baidu.com/p/7526480568','UNKNOWN','https://zhuanlan.zhihu.com/p/601750315','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'成都励志宏源拓展训练公司','UNKNOWN','UNKNOWN','https://tieba.baidu.com/p/7526480568→百度搜索→https://tieba.baidu.com/p/7526480568','UNKNOWN','https://zhuanlan.zhihu.com/p/601750315','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'济南市宏开教育培训学校','https://jinan.dzwww.com/ztzh/hkxx/','济南市','https://tieba.baidu.com/p/7131688961→百度搜索→DuckDuckGo搜索','TRUE','https://baijiahao.baidu.com/s?id=1686529077698052025 || https://www.thepaper.cn/newsDetail_forward_10446063','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'合肥厚德教育咨询有限公司 || 德厚教育基地','http://hfhdedu.com/','UNKNOWN','网友私信','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'凯越励志教育','UNKNOWN','广西省七星区寨山脚','https://tieba.baidu.com/p/7804910705','UNKNOWN','https://tieba.baidu.com/p/7804910705','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'志华特训学校 || 志华教育 || 志华教育咨询有限公司','http://www.zhczxx.com/ || http://www.hnzhihua.com/','志华特训学校地址: 湖南省长沙市望城区乔口镇柏乐园附近','ASaferChina (channel)@Telegram || 知乎搜索->https://zhuanlan.zhihu.com/p/555295501->DuckDuckGo搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'萃华实验学校 || 萃华青少年特训学校','http://www.cuihuajy.com/','地址: 安徽省六安市','知乎搜索->https://zhuanlan.zhihu.com/p/555295501→DuckDuckGo搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'徐州习正教育','UNKNOWN','UNKNOWN','知乎搜索->https://www.zhihu.com/question/301837316/answer/1969644263','UNKNOWN','https://www.zhihu.com/question/301837316/answer/1969644263 || https://www.zhihu.com/question/301837316/answer/718977461','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'志和教育','http://www.zhihejiaoyu.com','湖南省','百度搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'成才励志教育学校','UNKNOWN','湖南省益阳市资阳区成才励志教育培训学校','https://www.zhihu.com/people/63-11-90-1','TRUE','https://web.archive.org/web/20230507181159/https://twitter.com/ChrysalisQWQ/status/1655163765799931906','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'济南市纽扣青少年心理成长基地 || 纽扣青少年教育学校 || 济南市长清区纽扣教育培训学校有限公司','https://www.nukoschool.com/ || http://www.niukoujiaoyu.com/ || http://www.sdnuko.com/','济南市长清区纽扣教育培训学校有限公司 || 济南市长清区张夏镇高庄村','网友私信','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'耀昂青少年素质教育','UNKNOWN','(推测而得)重庆市','网友私信','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'泉州市四维未成年人成长指导中心','UNKNOWN','福建省泉州市晋江市英林镇嘉排村135号','网友私信','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'永州市零陵县立德培训学校','https://space.bilibili.com/2048903183','湖南省永州市零陵区邮亭圩镇雷家亭村','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'永州市零陵区中博青少年培训学校','https://www.douyin.com/user/MS4wLjABAAAA1VsnTENIMZdeuhZNZjdbbR1c6US-e215644oYV8BB0M','永州市零陵区珠山镇田心村','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'岳阳市湘阴县圣博青少年成长培训学校（慧腾园区）','UNKNOWN','岳阳市湘阴县袁家铺镇沙湖村','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','TRUE','https://x.com/yaming00742313/status/1824809430736867503 || https://www.bilibili.com/video/BV1D2421Z7Mj/ || https://www.bilibili.com/video/BV1wop6eqEQk/','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'岳阳市湘阴县圣博青少年成长培训学校（中山园区）','UNKNOWN','岳阳市湘阴县东塘镇小桥村湘营路','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'江永县振新青少年专门学校','UNKNOWN','江永县潇浦镇车田村车田村委会旁','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'湖南全德青少年教育','https://www.hnquande.com/','湖南省石门县夹山镇三板桥全德特训基地','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'四川新巴蜀青少年特训学校 || 新巴蜀特训营','(推测而得)(无法正常访问)http://www.xinbashu.cn/','成都新都区军屯镇','B站视频->Bing搜索','TRUE','https://www.bilibili.com/video/BV1uZ421K7NJ/ || https://news.cctv.com/2024/08/18/ARTIjq41Ia4U5awvNCpsW5GU240818.shtml || https://www.bilibili.com/video/BV1jE4m1d7ws/ || https://www.bilibili.com/video/BV1n5WHejEr7/','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'励萱教育叛逆戒网瘾学校 || 励萱教育','https://www.peixun123.com/lxjypnjwyxx','(不确定)(注册地址)河南省三门峡市城乡一体化示范区禹王路街道北朝村村委会院内05号','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'长沙旭阳教育','UNKNOWN','湖南省长沙县星沙街道开元中路88号星隆国际广场1栋1601','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆旭阳教育','https://www.100jiaoyu.com/xyjy/','重庆市铜梁区东城街道办事处安全村六组','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆护航学生素质训练基地','https://www.guanwenw.com/cqhhjy','重庆市渝北区玉峰山镇','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆志强素质教育','UNKNOWN','重庆市渝北区玉峰山镇','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'白领尔教育','http://ble.cn7q.cn/','重庆市','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆胤辰素质教育','https://www.douyin.com/user/MS4wLjABAAAA-xUEj7CnMtyL3ub84bJMRUuSulQEPshr3Kdw9KEWLGA','(实际位置很可能位于金佛山国家级风景名胜区内)重庆市南川区南城街道庆岩社区5组100号','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','TRUE','https://www.douyin.com/video/7404091671505308966','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'重庆子龙素质教育','https://www.douyin.com/user/MS4wLjABAAAAeWZXi30I9iZl2zXlu6FZJu-CkwTfml4OrCpVElbVQUOPeWCKlsYJP8Yz0uirXAE1','重庆市','Michelle Chan的「中国大陆“扭转机构”/“叛逆孩子特训学校”名单」','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'凤凰县文武学校 || 凤凰文武学校','https://www.douyin.com/user/MS4wLjABAAAApfjMXTsjtsywIAYBxmmgGHKPdjWJ338sEDbUCHa48rP1QEHK7Dc5OSiryXSDS6Hz','湖南省凤凰县廖家桥镇凤凰文武学校','抖音搜索"叛逆孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'途领跑素质教育 || 重庆途领跑拓展训练有限公司','https://www.douyin.com/user/MS4wLjABAAAARgKTU-OdTNE4hIa6roQyu10vZlHupWErMbLawVO42WkC0LqZI9Sp9pNzdhTDPzO3','重庆市','抖音搜索"叛逆孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'长思-青少年素质教育成长中心 || 河南长思教育科技有限公司','https://www.douyin.com/user/MS4wLjABAAAA62B2ZxH_MmmumL7iETqmVK39Yuy2r1F5vQWYANIlgn0','UNKNOWN','抖音搜索"叛逆孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'衡东少林文武学校','https://www.douyin.com/user/MS4wLjABAAAAHeKeYONiWA9F4zwA3OsCja0b85yogbkvhBAwhN3Myrs || https://www.douyin.com/user/MS4wLjABAAAA8sDGdNlfCQd9STC7622VLtKNgXv_xc1OV4IDsH3Gvv2-XKP9RAQCiMKOUc_JTds7 || https://www.douyin.com/user/MS4wLjABAAAAcSSO_Nai8UmGtU1ySbvbJ6RnQKa5IO9fFONePpZ8-oU || https://www.douyin.com/user/MS4wLjABAAAAlTugT6rECPZiqch_EFDnQCMK2uhXO5JkR_IOYTNr-n4','UNKNOWN','抖音搜索"叛逆孩子学校"->抖音搜索"衡东少林文武学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'青优特训教育信息咨询中心','https://www.douyin.com/user/MS4wLjABAAAAkhtcAjDnQAxIqAOklN0YkGNGz_XU3l4y7kgOf8Yx0o2zoFyZvCDvWx8SKC10IMI5','UNKNOWN','抖音搜索"叛逆孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'德立青少年素质教育 || 德立学校 || 德立素质教育 || 德立教育 || 德立（叛逆）学校','https://www.douyin.com/user/MS4wLjABAAAAk9NNbbAXgAHfLIFULp3OVSdEHsjQvvHdnfILDy-wY1c || https://www.douyin.com/user/MS4wLjABAAAAq_sv2nD38ljwrPiNprLyq_QIxtUpmSSnF5-M8bafpYSPHRIJIrKoUAbUbN0TK8uJ || https://www.douyin.com/user/MS4wLjABAAAAimYhLmJG_lRfVw12f5guQktRySB4UiWm4iaaYep5wTc || https://www.douyin.com/user/MS4wLjABAAAA4oAUV0gaMFLuKD4-NtEe4jNfv1ut5ZSTacgK3-_tHcfaqpS-6prAdNHaaMDu3i7Z || https://www.douyin.com/user/MS4wLjABAAAABPVhvP3hhsL1LnmQwalXjWoVVqdUe6t52D-RI9rduCmun4ceZ9l1tpgzWHTQpu03','UNKNOWN','抖音搜索"戒网瘾学校"->抖音搜索"德立教育叛逆学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'励思素质特训','https://www.douyin.com/user/MS4wLjABAAAAo507g66_T7BJ-INS7zEVJKrgFx1AIAG3S9HLIn9iCdEKAEiUAfhglxiRuTC4qcU1','UNKNOWN','抖音搜索"青春期孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'揭阳市天天向上教育基地','https://www.douyin.com/user/MS4wLjABAAAARkutoShJl7FfGcJKFNaq88i7DoPPuIX4O3kv_B4G-ZA','(推测而得)揭阳市','抖音搜索"青春期孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'启点少年管教咨询 || 湖北启点教育投资有限公司','https://www.douyin.com/user/MS4wLjABAAAAgtXKV7gIK6R51FwPlkRMzvCMRUHavDnMLepevmHaEaiIqGffKoH6n4Nz8YG_2KYV','UNKNOWN','抖音搜索"青春期孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'励志教育特训-子翔 || 河南子翔励志教育咨询有限公司','https://www.douyin.com/user/MS4wLjABAAAAqSezIMK8GWRnp-Zxjir7Paf-UAWinFjd65HJ7NJjX7MuuE5KV8XkKs6ncgj49lIX','UNKNOWN','抖音搜索"青春期孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'思佳咨询中心 || 郑州郑东新区思佳信息咨询中心','https://www.douyin.com/user/MS4wLjABAAAAhSOWvAEADhAm-pXMCBM3-9T_YkKFyo6DRIR-TIBsLePrJyyAJIIor3F1jm_5HMqf','UNKNOWN','抖音搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'国瑾教育','https://www.douyin.com/user/MS4wLjABAAAAVusxBvzxDd14lB1HgzNMomTONt_97JoPzcHJssVytBw','UNKNOWN','抖音搜索"青春期孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'五博叛逆孩子成长教育','https://www.kuaishou.com/profile/3x4f65iudbxaxa9','UNKNOWN','快手搜索用户"叛逆孩子"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'护苗教育','https://www.kuaishou.com/profile/3x7bu7ttex2cbha','UNKNOWN','快手搜索用户"叛逆孩子"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'碧海教育','https://www.douyin.com/user/MS4wLjABAAAA_1dcn7pZ-7ZMchIdn19WNpruxMlYOYNR9cNax5gkQCqXisq9anCJGCNDgidAoH7R','UNKNOWN','抖音搜索"青春期孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'许絮教育信息咨询','https://www.douyin.com/user/MS4wLjABAAAAKl5bHdEdzPq2HfFpnhhkNyrz93_YxhdLEWGdzAhiS5o7urcV0Lmk_Goh4LkxroGn','UNKNOWN','抖音搜索"青春期孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'商丘初心研学教育基地 || 商丘初心研学教育','https://www.douyin.com/user/MS4wLjABAAAAgxpbvTASbU1HDSMA15dCic0rqbvFdlgpb3_IGNA0Vh0 || https://www.douyin.com/user/MS4wLjABAAAADPuhlnSDTQrGjo_x5KYhdy3O9Qk8idUFXrByENBJ3NhTbwgB-YxKvflEXzZJp71g','河南商丘','抖音搜索"问题孩子学校"->抖音搜索"商丘初心研学教育"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'星启航少年管教咨询 || 星启航教育 || 湖北星启航教育咨询有限公司','https://www.douyin.com/user/MS4wLjABAAAA56T58wri_muOfxcpW3ZPJu4sCvpvqyqgWymCF_pJzlPM3s0ls-n6erYrEjKvsZH5','UNKNOWN','抖音搜索"问题孩子学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'揭阳东美实验专门教育矫正学校 || 东美实验叛逆矫正学校','https://www.douyin.com/user/MS4wLjABAAAAWPiw_efSumglczPrB0XhYdOrqQ4o2r6MZbfMf7Ew0Jc','UNKNOWN','网友私信','TRUE','https://www.bilibili.com/video/BV1kcsce4E5c/','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'振中特训','https://www.douyin.com/user/MS4wLjABAAAASyM85LPz9nFznHUZHAYH7YkVApwxSAb_946FZO_7LGn6-SrT75DCOVBNJ7X6_1nU','UNKNOWN','抖音搜索"矫正学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'汉川市启泰特色教育学校 || 启泰教育 || 启泰特色教育学校','http://www.city-edu.cn/','湖北省汉川市庙头镇','Bing搜索"戒网瘾学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'博恩青少年教育基地 || 惠州博恩青少年教育成长基地 || 惠州伯乐青少年教育成长基地 || 博恩教育 || 惠州市博恩心理咨询服务有限公司','https://www.gdboquan.com/ || https://www.hzboen.com/','广东省惠州市博罗县罗阳街道义和镇伯乐青少年教育成长基地','Bing搜索"戒网瘾学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'石嘴山市航正青少年成长中心 || 宁夏航正心理咨询 || 石嘴山市航正心理咨询有限责任公司','http://www.szshz.com/','宁夏回族自治区石嘴山市大武口区贺兰山北路1-23-2 || 宁夏回族自治区-石嘴山市-大武口区-贺兰山北路532号 洗煤厂工业遗址公园对面','网友私信','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'匠学青少年素质教育-湖北潜江 || 匠学青少年素质教育 || 湖北潜江匠学教育','https://www.douyin.com/user/MS4wLjABAAAAMrIk_Xw0zpneySHsTE4KvEHKkPRiGogfFjH035QE9TBH8_8XP39_el8L1z67w4BL','湖北省潜江市周肌街道汉沙路2号','百度贴吧"戒网瘾学校吧"','TRUE','https://tieba.baidu.com/p/9107780287','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'贵州省遵义市直利青少年素质教育中心 || 贵州直利素质教育学校 || 贵州遵义直利教育 || 直利教育','https://www.douyin.com/user/MS4wLjABAAAA0LKtPen24QbnIUocwQCiIrmvHy_19eSAxA9z6EozyKln2S6oSMkn6TNQcmYMxtnY','贵州省遵义市','百度贴吧"戒网瘾学校吧"','TRUE','https://tieba.baidu.com/p/9096358124','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'心海岸青少年叛逆戒网瘾学校 || 成都心海岸教育咨询有限公司','https://www.douyin.com/user/MS4wLjABAAAAicG6FSNVe-DUBgyIcmFuFE28tJLWOwzub-pMj7BOyzIEL4reGMdVdN9xXn-mStqf','UNKNOWN','网上搜索','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'江苏渝铭青少年特训基地','https://www.douyin.com/user/MS4wLjABAAAAcjZG84r4lcy-3zZKrLOIMeSX6H5FDFeCzCm2Dr_UomU','UNKNOWN','抖音搜索"特训基地"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'心种子教育 || 山东心种子教育基地 || 山东心种子教育咨询有限公司','http://www.sdxinzhongzi.com/ || https://www.douyin.com/user/MS4wLjABAAAAJrf4f22qEDH8ADTHxyooeLhix3zWDtibZqV-bMAbse4 || (疑似)https://www.douyin.com/user/MS4wLjABAAAAGC-58bxzQc8lHGVKJVI8NmCjwR7WYAjTXRnUaf5nQKQNx7jN3ZPIrIOI2dLu_75g','山东潍坊青州市花卉苗木交易中心东500米路北','X平台帖子','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'信丰成龙素质教育基地 || 赣州市成龙教育咨询服务有限公司','https://www.douyin.com/user/MS4wLjABAAAAw2FxfCwKwj4CUQPSRwEMzb5RIO2f4MaErxbFv2pmbbo','UNKNOWN','抖音搜索用户"素质教育"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'凤凰姐素质教育培训学校 || 凤凰姐素质教育','https://www.douyin.com/user/MS4wLjABAAAAefq6d5Rr11yc-uiXyk-ZMCGxJFBG2SwzbSqUE0uq0kFqtTleJ1z-JtzDB7Ux_NQj || https://www.douyin.com/user/MS4wLjABAAAAHuPA2Zlt1tYOG8JOoyWTkDalH9-Df6I9JSCGfZEziKk69279FGbK-ARHuA25_iZi || https://www.douyin.com/user/MS4wLjABAAAABnaTSMHvoOuptrP-PI9UkFDaAA7mrmggQgl4nghthyZ3zbnLor_YX0v7K4895I3Y','UNKNOWN','抖音搜索用户"素质教育"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'翰林青少年训练营 || 睢宁县翰林青少年训练营','https://www.douyin.com/user/MS4wLjABAAAA9kpWFq4Elr1uHA4n8bzsq6E-ljETm_cuJN2St4G9f78','人民西路睢宁县汇文中学西侧 || 睢宁县官山镇','抖音搜索用户"戒网瘾"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'郴州资兴市德志未来素质教育培训学校 || 资兴市德志未来素质教育培训学校有限公司','https://www.douyin.com/user/MS4wLjABAAAAWkDwsxmHY39M2xOQb-Tca438z3JgCvVLuWUcjggK_I1_Yb4D_SjpnjOXqGvTj2pp','湖南省郴州市资兴市','抖音搜索用户"素质教育"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'安徽民德素质学校','http://www.ahminde.cn/','安徽省安庆市怀宁县金拱镇高湖村','Bing搜索" 戒网瘾学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'心阳教育 || 汕头市心阳教育学校','http://www.gdttxs.com/','汕头市潮阳区和平镇安轿村心阳教育基地（原安轿小学）','Bing搜索" 戒网瘾学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'石家庄君泽体能拓展 || 石','http://www.sjz020jy.com/','河北省石家庄市栾城区西营乡后牛村大道街东头（308国道东）','Bing搜索" 戒网瘾学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'长沙市雨花区快乐成长培训学校','http://www.klczxx.cn/','湖南省长沙市雨花区','Bing搜索" 戒网瘾学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'德智体能拓展 || 南通德智体能机构 || 南通德智体能拓展有限公司','http://www.dztnedu.cn/','江苏省如皋市城北街道双龙居德智体能拓展','Bing搜索" 戒网瘾学校"','UNKNOWN','NONE','FALSE');
INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'孔德青少年特训学校','(疑似)http://www.jikebon.com/school/80.html','UNKNOWN','Bing搜索"特训学校"','UNKNOWN','NONE','FALSE');

-- CONSTRUCTED FORM RELATED ARTICLES OF VER 1.5.5
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'起底弑母少女身后的网戒学校：暴力抓走、随时体罚和神秘专家','https://www.thepaper.cn/newsDetail_forward_1532141','https://web.archive.org/web/20240616162214/https://www.thepaper.cn/newsDetail_forward_1532141');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'网戒学校第一案宣判后，“杨永信”们并没有消失','https://new.qq.com/rain/a/20230612A09QOU00','https://archive.is/RaJ3D');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'15岁女生在“戒网瘾学校”遭教官性侵，学校封锁丑闻两个月，已被关停','https://new.qq.com/rain/a/20230921A0615D00','https://archive.is/TPKKD');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'18岁网瘾少年被铐着关禁闭两天死亡，戒网瘾学校5人获刑','https://www.thepaper.cn/newsDetail_forward_3014515','https://archive.is/pbA3c');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'京华时报：“戒网瘾学校”是长在教育上的息肉','http://opinion.people.com.cn/n1/2016/1013/c1003-28774889.html','https://archive.is/kKWiQ');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'“戒网瘾死亡”案：母亲称得到血的教训 18岁男孩被送去戒网瘾学校两天后死亡 母亲称得到血的教训','https://www.guancha.cn/politics/2019_02_24_491234.shtml','https://archive.is/VyOLt');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'网戒学校20年不倒的秘密：绝对服从，审查家书，不服就打','https://www.thepaper.cn/newsDetail_forward_1540331','https://archive.is/CjWdU');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'重审开庭！涉嫌非法拘禁，共19名被害人！揭露人发声→','https://www.thepaper.cn/newsDetail_forward_22537961','https://archive.is/hgHgd');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'一个戒网瘾学校投资者的自白：如何办一所利润100%的“集中营”','https://jiemodui.com/N/94422.html','https://archive.is/XqmzW');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'多名学员讲述新巴蜀特训营经历：被欺凌殴打是常态','https://news.cctv.com/2024/08/18/ARTIjq41Ia4U5awvNCpsW5GU240818.shtml','https://archive.is/GP9bw');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'女生戒网瘾学校内患癌 校方:其父说吃止痛药就行','https://news.sina.com.cn/s/2018-06-15/doc-ihcyszrz8019023.shtml','https://archive.is/J6B1e');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'媒体刊文评安徽少年命丧戒网学校：“治网瘾”还要害多少人','https://www.thepaper.cn/newsDetail_forward_1766244','https://archive.is/g2zvr');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'18岁男孩被送去“戒网瘾”两天后死亡 母亲：很后悔','http://it.people.com.cn/n1/2019/0224/c1009-30898697.html','https://archive.is/KQxXz');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'戒网瘾学校有多恐怖？电击殴打无处不在，学生每天想自杀解脱','https://baijiahao.baidu.com/s?id=1803476657206346381','https://archive.is/cD0gv');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'14岁男生被送到戒网瘾学校四天后骨折 涉事教官停职 警方介入','https://baijiahao.baidu.com/s?id=1687042964336943370','https://archive.is/CpOtu');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'安徽“男孩戒网瘾身亡案”开庭','https://baijiahao.baidu.com/s?id=1614616814979007616','https://archive.is/g5BUx');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'山东“戒网瘾学校”：勒令女学员喝脏拖把拧下来的水','https://news.cnr.cn/native/gd/20161014/t20161014_523196309.shtml','https://archive.is/tiOYv');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'观点1+1：19岁女孩惨死“野鸡学校”，戒网瘾无正道？','http://opinion.people.com.cn/n/2014/0617/c1003-25161313.html','https://archive.is/vwCNw');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'戒网瘾致人死涉事学校仍招生 其办学资格已被撤销','https://finance.cnr.cn/gundong/201406/t20140617_515674809.shtml','https://archive.is/omtwi');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'揭秘戒除网瘾学校如何训练和体罚学生：晕倒用水灌','http://www.mnw.cn/news/shehui/763416.html','https://web.archive.org/web/20140906182406/http://www.mnw.cn/news/shehui/763416.html');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'[共同关注]为戒网瘾 误进"地狱"学校?','https://news.cctv.com/society/20070621/103838.shtml','https://archive.is/rLp9D');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'18岁男孩被送去特训学校戒网瘾 不到48小时后身亡','https://news.jstv.com/a/20170814/1502698141724.shtml','https://archive.is/4CRay');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'“电疗”戒网瘾，孩子每天做噩梦想自杀！究竟谁之过？','https://baijiahao.baidu.com/s?id=1597625897292562775','https://archive.is/0HpfW');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'我采访了三个从网瘾中心出来的少年 他们到底经历了什么','https://www.guancha.cn/society/2016_08_12_371072_s.shtml','https://archive.is/LbXTa');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'河南19岁少女戒网瘾死在学校特训课上 遍体鳞伤','https://news.rednet.cn/c/2014/06/15/3376711.htm','https://archive.is/ZLszM');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'对话因开网店被送网戒中心当事人：“我将站在阳光下，与杨永信对质”','https://new.qq.com/rain/a/20230426A09PBD00','https://archive.is/cNyrw');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'被殴打、遭虐待，曝光特训学校的暗面','https://mp.weixin.qq.com/s/vtG9wZ3K2nKnfZze8zoudg','https://web.archive.org/web/20240830224131/https://mp.weixin.qq.com/s/vtG9wZ3K2nKnfZze8zoudg');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'网友举报成都一特训学校殴打学生还冒充民警，当地多部门介入调查','https://baijiahao.baidu.com/s?id=1807514311674536639','https://archive.is/BsnIs');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'“叛逆学校”被曝对学生扇巴掌喷辣椒水 河南当地教体局：涉事机构关停，学生及相关人员已清退','https://www.dzwww.com/xinwen/shehuixinwen/202305/t20230511_11908310.htm','https://archive.is/xqdtj');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'13岁男孩被送特训学校戒网瘾遭猥亵 公安机关已立案，教官被逮捕','http://news.hnr.cn/shxw/article/1/1676179155252342785','https://web.archive.org/web/20230706213838/http://news.hnr.cn/shxw/article/1/1676179155252342785');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'特训营岂能成未成年人保护盲区','https://baijiahao.baidu.com/s?id=1807801484984686362','https://archive.is/NWynG');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'教育没有捷径，别再迷信封闭式“特训营”了','https://m.gmw.cn/2024-08/21/content_37512818.htm','https://archive.is/AuFzc');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'“戒网瘾”致死致伤惨剧屡现 谁来终结乱象？','https://society.huanqiu.com/article/9CaKrnJXmEC','https://archive.is/KCyBM');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'17岁少年的复仇：干掉那个“戒网瘾”学校','https://zhuanlan.zhihu.com/p/210540199','NONE');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'江西戒网瘾学校豫章书院被曝体罚囚禁学生 区政府：处罚追责','https://www.guancha.cn/Education/2017_10_31_432951.shtml','https://web.archive.org/web/20220706221833/https://www.guancha.cn/Education/2017_10_31_432951.shtml');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'问题少年教育问题严重，郑州戒网瘾学校竟能连续7年过审','https://www.thepaper.cn/newsDetail_forward_1251759','https://web.archive.org/web/20171201115634/https://www.thepaper.cn/newsDetail_forward_1251759');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'戒网瘾学校9成涉体罚：最快进校8小时就死','https://tech.sina.com.cn/i/2014-06-19/17429446718.shtml','https://web.archive.org/web/20140728180656/https://tech.sina.com.cn/i/2014-06-19/17429446718.shtml');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'山东“戒网瘾学校”被责令整改后仍在招生，称不影响素质教育','https://www.thepaper.cn/newsDetail_forward_1542403','https://web.archive.org/web/20210415023342/https://www.thepaper.cn/newsDetail_forward_1542403');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'送孩子进戒网瘾学校的父母：特别怕半夜被儿子杀死','https://news.ifeng.com/c/7fa7wKkI0C7','https://web.archive.org/web/20240901024841/https://news.ifeng.com/c/7fa7wKkI0C7');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'在学校、医生、心理咨询师的推荐下，他们把孩子送入了“戒网瘾学校”｜深度报道','https://mp.weixin.qq.com/s/d-aJ00-nPwmvDdoPqVvgLA','https://web.archive.org/web/20240525083154/https://mp.weixin.qq.com/s/d-aJ00-nPwmvDdoPqVvgLA');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'少女被虐致死 戒网瘾学校是“守护者”还是“摧残者”','https://hn.ifeng.com/hnzhuanti/zhengzhoujiewangxuexiao/','https://web.archive.org/web/20150809005123/https://hn.ifeng.com/hnzhuanti/zhengzhoujiewangxuexiao/');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'少年命丧戒治网瘾学校 专家：应设国家标准','http://it.people.com.cn/n1/2018/0423/c1009-29942868.html','https://web.archive.org/web/20240901030142/http://it.people.com.cn/n1/2018/0423/c1009-29942868.html');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'戒网瘾学校怎成“摧残基地” ——聚焦戒网瘾学校“培训致人死亡”事件','http://zqb.cyol.com/html/2014-06/22/nw.D110000zgqnb_20140622_6-01.htm','https://web.archive.org/web/20240901030515/http://zqb.cyol.com/html/2014-06/22/nw.D110000zgqnb_20140622_6-01.htm');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'15岁女生在“戒网瘾学校”遭教官性侵｜深度报道','https://www.163.com/dy/article/IF8FPLBH0512BN99.html','https://web.archive.org/web/20231201012955/https://www.163.com/dy/article/IF8FPLBH0512BN99.html');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'“雷电法王”杨永信：曾电击6000网瘾少年，如今下场令人唏嘘','https://www.163.com/dy/article/IFVJ31OF0543VRV7.html','https://web.archive.org/web/20240901030843/https://www.163.com/dy/article/IFVJ31OF0543VRV7.html');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'戒网瘾学校有多恐怖？性侵电击殴打无处不在，学生每天想自杀解脱','https://www.163.com/dy/article/HVDTA64Q0553RHMI.html','https://web.archive.org/web/20240901031114/https://www.163.com/dy/article/HVDTA64Q0553RHMI.html');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'13岁男孩“戒网瘾”被教官猥亵！孩子有网瘾，父母到底该怎么办？','https://new.qq.com/rain/a/20230705A0806400','https://web.archive.org/web/20240901031543/https://new.qq.com/rain/a/20230705A0806400');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'电击之后，戒网瘾学校还有创新','https://www.ellemen.com/spotlight/a37239444/wangyin-210806/','https://archive.ph/t77bD');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'男孩“戒网瘾”身亡：涉事学校系非法办学 5人被拘','https://www.chinacourt.org/article/detail/2017/08/id/2966563.shtml','https://archive.ph/5ncwf');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'豫章书院“吹哨人”奔走六年：中国还有许多“豫章书院”','https://new.qq.com/rain/a/20230331A0603500','https://archive.ph/F0PH9');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'"戒网瘾"学校被指虐待学生 校方:不这样咋管住他们','https://www.163.com/news/article/D255N6A20001875P.html','https://web.archive.org/web/20240901032548/https://www.163.com/news/article/D255N6A20001875P.html');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'第一批被送进戒网瘾学校的孩子，现状让人担忧，父母留下终身悔恨','https://baijiahao.baidu.com/s?id=1665194409189337123','https://archive.ph/QpGlZ');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'弑母少女的失格人生：争吵捅伤父亲，曾被送网戒学校称要报复','https://www.thepaper.cn/newsDetail_forward_1532179','https://web.archive.org/web/20220926134324/https://www.thepaper.cn/newsDetail_forward_1532179');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'湖南一戒网瘾机构被举报监视体罚学生，当地教育局：已在整顿','https://www.thepaper.cn/newsDetail_forward_4986152','https://web.archive.org/web/20220924130334/https://www.thepaper.cn/newsDetail_forward_4986152');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'戒网瘾学校的时代结束了吗','https://finance.sina.cn/insurance/bxzx/2020-12-27/detail-iiznezxs8988495.d.html','https://archive.ph/Rey9L');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'那些被送进戒网瘾学校的孩子','https://zhuanlan.zhihu.com/p/47633665','https://web.archive.org/web/20220524012858/https://zhuanlan.zhihu.com/p/47633665');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'15岁女生在“戒网瘾学校”遭教官性侵：许多父母病了，却在喂孩子吃药','https://k.sina.com.cn/article_7307634592_1b391a7a001901a4dy.html','https://web.archive.org/web/20240901040221/https://k.sina.com.cn/article_7307634592_1b391a7a001901a4dy.html');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'19岁少女死于戒网瘾学校 涉事学校办学资质被取消','https://www.rmzxb.com.cn/sqmy/nywy/2014/06/17/340701_1.shtml','https://web.archive.org/web/20240901041115/https://www.rmzxb.com.cn/sqmy/nywy/2014/06/17/340701_1.shtml');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'长安剑：从电击疗法到豫章书院，为什么戒网瘾逃不出暴力手段','https://www.thepaper.cn/newsDetail_forward_1846729','https://web.archive.org/web/20220430071639/https://www.thepaper.cn/newsDetail_forward_1846729');
INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'湖南14岁少年入戒网瘾学校三天后腿骨折 学校称其自己崴伤、附近监控未使用','https://www.thepaper.cn/newsDetail_forward_10468634','https://web.archive.org/web/20240901041707/https://www.thepaper.cn/newsDetail_forward_10468634');

COMMIT;