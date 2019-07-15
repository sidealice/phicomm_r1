.class public Lcom/phicomm/speaker/PhApplication;
.super Landroid/app/Application;
.source "PhApplication.java"


# static fields
.field public static a:Z

.field public static b:I

.field private static d:Landroid/content/Context;

.field private static e:Lcom/phicomm/speaker/PhApplication;

.field private static f:Z

.field private static j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:I

.field private g:Landroid/app/Activity;

.field private h:J

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-wide/16 v0, 0x2710

    .line 69
    iput-wide v0, p0, Lcom/phicomm/speaker/PhApplication;->h:J

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/PhApplication;)Landroid/app/Activity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/phicomm/speaker/PhApplication;->g:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/PhApplication;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/PhApplication;->g:Landroid/app/Activity;

    return-object p1
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 75
    sget-object v0, Lcom/phicomm/speaker/PhApplication;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 87
    sput-object p0, Lcom/phicomm/speaker/PhApplication;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/PhApplication;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/phicomm/speaker/PhApplication;->i:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 55
    sput-boolean p0, Lcom/phicomm/speaker/PhApplication;->f:Z

    return p0
.end method

.method public static b()Lcom/phicomm/speaker/PhApplication;
    .locals 1

    .line 79
    sget-object v0, Lcom/phicomm/speaker/PhApplication;->e:Lcom/phicomm/speaker/PhApplication;

    return-object v0
.end method

.method static synthetic b(Lcom/phicomm/speaker/PhApplication;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/phicomm/speaker/PhApplication;->i()V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/PhApplication;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/phicomm/speaker/PhApplication;->e()V

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/phicomm/speaker/PhApplication;->f:Z

    return v0
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/phicomm/speaker/PhApplication;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/phicomm/speaker/PhApplication;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/phicomm/speaker/PhApplication;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/PhApplication;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/phicomm/speaker/PhApplication;->h:J

    return-wide v0
.end method

.method private e()V
    .locals 4

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/phicomm/speaker/PhApplication$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/PhApplication$1;-><init>(Lcom/phicomm/speaker/PhApplication;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;ILjava/lang/String;)V

    .line 142
    sget-object v1, Lcom/phicomm/speaker/PhApplication;->d:Landroid/content/Context;

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 143
    invoke-static {p0}, Lorg/litepal/LitePal;->initialize(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0}, Lcom/phicomm/speaker/PhApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;)V

    .line 147
    invoke-static {p0}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    const-string v1, "24643624"

    const-string v2, "95d3bdb766ae80d404f2ac6b2bb515d6"

    .line 149
    invoke-static {p0, v1, v2}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/phicomm/speaker/PhApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/PhApplication$2;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/PhApplication$2;-><init>(Lcom/phicomm/speaker/PhApplication;)V

    invoke-static {v1, v2}, Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    .line 161
    invoke-static {}, Lcom/unisound/lib/net/OkHttpInitBuilder;->getInstance()Lcom/unisound/lib/net/OkHttpInitBuilder;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/unisound/lib/net/OkHttpInitBuilder;->setReadTimeOut(I)Lcom/unisound/lib/net/OkHttpInitBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/unisound/lib/net/OkHttpInitBuilder;->setConnectTimeout(I)Lcom/unisound/lib/net/OkHttpInitBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/unisound/lib/net/OkHttpInitBuilder;->setWriteTimeOut(I)Lcom/unisound/lib/net/OkHttpInitBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/unisound/lib/net/OkHttpInitBuilder;->setRetryCount(I)Lcom/unisound/lib/net/OkHttpInitBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/unisound/lib/net/OkHttpInitBuilder;->build(Landroid/app/Application;)V

    .line 163
    invoke-static {p0}, Lcom/unisound/lib/utils/GlobalConstant;->setContext(Landroid/content/Context;)V

    .line 165
    invoke-static {v0}, Lcom/unisound/lib/utils/GlobalConstant;->setOuter(Z)V

    .line 166
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->isOuter()Z

    move-result v0

    invoke-static {v0}, Lcom/unisound/lib/net/UserRequestClient;->setOuter(Z)V

    .line 167
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->isOuter()Z

    move-result v0

    invoke-static {v0}, Lcom/unisound/lib/push/constant/NetConstantSwitch;->setIsOuter(Z)V

    .line 168
    invoke-direct {p0}, Lcom/phicomm/speaker/PhApplication;->g()V

    .line 170
    invoke-static {}, Lcom/unisound/lib/usercenter/TokenManger;->getInstance()Lcom/unisound/lib/usercenter/TokenManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/usercenter/TokenManger;->startUpdateTokenTask()V

    .line 171
    invoke-static {p0}, Lcom/unisound/lib/msgcenter/DataChannelManager;->getDataChannelManager(Landroid/content/Context;)Lcom/unisound/lib/msgcenter/DataChannelManager;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/PhApplication$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/PhApplication$3;-><init>(Lcom/phicomm/speaker/PhApplication;)V

    .line 172
    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/DataChannelManager;->setGlobalEventListener(Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;)V

    .line 189
    invoke-static {p0}, Lcom/a/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/a/a/a;->a(Landroid/app/Application;)Lcom/a/a/b;

    .line 196
    invoke-static {p0}, Lcom/unisound/lib/msgcenter/DataChannelManager;->getDataChannelManager(Landroid/content/Context;)Lcom/unisound/lib/msgcenter/DataChannelManager;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/PhApplication$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/PhApplication$4;-><init>(Lcom/phicomm/speaker/PhApplication;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/DataChannelManager;->setMqttStateChangeListener(Lcom/unisound/lib/listener/IMqttStateListener;)V

    return-void
.end method

.method private g()V
    .locals 1

    const-string v0, "2882303761517646918"

    .line 221
    sput-object v0, Lcom/unisound/lib/push/constant/MiConstant;->APP_ID:Ljava/lang/String;

    const-string v0, "5491764663918"

    .line 222
    sput-object v0, Lcom/unisound/lib/push/constant/MiConstant;->APP_KEY:Ljava/lang/String;

    return-void
.end method

.method private h()V
    .locals 1

    .line 226
    new-instance v0, Lcom/phicomm/speaker/PhApplication$5;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/PhApplication$5;-><init>(Lcom/phicomm/speaker/PhApplication;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/PhApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private i()V
    .locals 3

    const-string v0, "checkMqttConnect"

    .line 294
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 295
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/manager/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/d/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/phicomm/speaker/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/d/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PhApplication"

    const-string v1, "reconnect if check status is disconect"

    .line 306
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/phicomm/speaker/PhApplication$6;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/PhApplication$6;-><init>(Lcom/phicomm/speaker/PhApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 136
    invoke-static {p0}, Landroid/support/multidex/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 98
    invoke-virtual {p0}, Lcom/phicomm/speaker/PhApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/PhApplication;->d:Landroid/content/Context;

    .line 99
    sput-object p0, Lcom/phicomm/speaker/PhApplication;->e:Lcom/phicomm/speaker/PhApplication;

    .line 100
    invoke-direct {p0}, Lcom/phicomm/speaker/PhApplication;->f()V

    .line 101
    invoke-direct {p0}, Lcom/phicomm/speaker/PhApplication;->h()V

    .line 102
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->a()Lcom/phicomm/speaker/presenter/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/p;->c()V

    .line 103
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->a(Landroid/content/Context;)Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->b()V

    .line 104
    invoke-direct {p0}, Lcom/phicomm/speaker/PhApplication;->e()V

    .line 105
    invoke-direct {p0}, Lcom/phicomm/speaker/PhApplication;->i()V

    .line 106
    invoke-static {p0}, Lcom/blankj/utilcode/util/d;->a(Landroid/app/Application;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 324
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 325
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->a()Lcom/phicomm/speaker/presenter/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/p;->d()V

    .line 326
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->a(Landroid/content/Context;)Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/PhiMqttPresenter;->f()V

    .line 327
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/d/a;->c()V

    return-void
.end method
