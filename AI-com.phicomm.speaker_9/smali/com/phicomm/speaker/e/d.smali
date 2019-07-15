.class public Lcom/phicomm/speaker/e/d;
.super Ljava/lang/Object;
.source "UnisoundManager.java"


# static fields
.field private static volatile a:Lcom/phicomm/speaker/e/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/unisound/lib/UnisAccountAssistant;

.field private d:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

.field private e:Lcom/unisound/lib/msgcenter/DataChannelManager;

.field private f:Lcom/phicomm/speaker/model/d;

.field private g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/phicomm/speaker/e/d;->h:Z

    const-string v1, "UnisoundManager"

    const-string v2, "UnisoundManager init"

    .line 89
    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/e/d;->b:Landroid/content/Context;

    .line 91
    iput-boolean v0, p0, Lcom/phicomm/speaker/e/d;->h:Z

    .line 92
    new-instance v0, Lcom/phicomm/speaker/model/d;

    invoke-direct {v0}, Lcom/phicomm/speaker/model/d;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/e/d;->f:Lcom/phicomm/speaker/model/d;

    .line 93
    invoke-static {}, Lcom/unisound/lib/UnisAccountAssistant;->getInstance()Lcom/unisound/lib/UnisAccountAssistant;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/e/d;->c:Lcom/unisound/lib/UnisAccountAssistant;

    .line 94
    invoke-direct {p0}, Lcom/phicomm/speaker/e/d;->g()V

    .line 95
    invoke-direct {p0}, Lcom/phicomm/speaker/e/d;->h()V

    .line 96
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    return-void
.end method

.method public static a()Lcom/phicomm/speaker/e/d;
    .locals 2

    .line 100
    sget-object v0, Lcom/phicomm/speaker/e/d;->a:Lcom/phicomm/speaker/e/d;

    if-nez v0, :cond_1

    .line 101
    const-class v0, Lcom/phicomm/speaker/e/d;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/phicomm/speaker/e/d;->a:Lcom/phicomm/speaker/e/d;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/phicomm/speaker/e/d;

    invoke-direct {v1}, Lcom/phicomm/speaker/e/d;-><init>()V

    sput-object v1, Lcom/phicomm/speaker/e/d;->a:Lcom/phicomm/speaker/e/d;

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_1
    :goto_0
    sget-object v0, Lcom/phicomm/speaker/e/d;->a:Lcom/phicomm/speaker/e/d;

    return-object v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/d;)Lcom/unisound/lib/UnisAccountAssistant;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/phicomm/speaker/e/d;->c:Lcom/unisound/lib/UnisAccountAssistant;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/d;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/e/d;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 580
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 583
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;

    .line 585
    invoke-virtual {v2}, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v3

    .line 586
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;

    .line 587
    invoke-virtual {v5}, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->getUdid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 588
    new-instance v6, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {v6}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;-><init>()V

    .line 589
    invoke-virtual {v6, v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->castPhiDeviceInfo(Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 590
    invoke-virtual {v5}, Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;->isIsActive()Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setActive(Z)V

    .line 591
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "UnisoundManager"

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phideviceList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " unideviceList size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mergedeviceList size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 595
    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 715
    new-instance p2, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {p2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;-><init>()V

    iput-object p2, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    goto :goto_0

    .line 717
    :cond_0
    iput-object p2, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 719
    :goto_0
    iget-object p2, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setOnline(Z)V

    .line 720
    iget-object p2, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setDeviceState(I)V

    .line 721
    iget-object p1, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 723
    iget-object p1, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "udid = ?"

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->saveOrUpdate([Ljava/lang/String;)Z

    move-result p1

    const-string p2, "UnisoundManager"

    .line 724
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPhiDeviceInfo result =  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/d;)V
    .locals 3

    .line 453
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    new-instance v2, Lcom/phicomm/speaker/e/d$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/phicomm/speaker/e/d$3;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/d;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/e/d;->a(ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/d;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/d;)V

    return-void
.end method

.method static final synthetic a(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 3

    const-string v0, "alarm %s: %s"

    const/4 v1, 0x2

    .line 222
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p0

    new-instance v0, Lcom/phicomm/speaker/a/ab;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/a/ab;-><init>(Lcom/unisound/lib/time/bean/AlarmReminder;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/d;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/phicomm/speaker/e/d;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/e/d;)Lcom/phicomm/speaker/model/d;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/phicomm/speaker/e/d;->f:Lcom/phicomm/speaker/model/d;

    return-object p0
.end method

.method public static b()Z
    .locals 2

    .line 112
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDeviceState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0179

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 123
    :pswitch_3
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f01c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()Z
    .locals 3

    .line 141
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "1.0.0.3159"

    .line 146
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :cond_1
    if-nez v1, :cond_2

    const v0, 0x7f0f00e5

    .line 149
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    :cond_2
    return v1
.end method

.method private g()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->c:Lcom/unisound/lib/UnisAccountAssistant;

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->b()Lcom/phicomm/speaker/PhApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/UnisAccountAssistant;->initConfig(Landroid/app/Application;)V

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->c:Lcom/unisound/lib/UnisAccountAssistant;

    new-instance v1, Lcom/phicomm/speaker/e/d$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/e/d$1;-><init>(Lcom/phicomm/speaker/e/d;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/UnisAccountAssistant;->setUserGlobalEventListener(Lcom/unisound/lib/usercenter/interf/IAssistantGlobalEventListener;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 177
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->b()Lcom/phicomm/speaker/PhApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/msgcenter/DataChannelManager;->getDataChannelManager(Landroid/content/Context;)Lcom/unisound/lib/msgcenter/DataChannelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/e/d;->e:Lcom/unisound/lib/msgcenter/DataChannelManager;

    .line 178
    invoke-static {}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->getInstance()Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/e/d;->d:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->d:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    new-instance v1, Lcom/phicomm/speaker/e/d$7;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/e/d$7;-><init>(Lcom/phicomm/speaker/e/d;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->setStatusListener(Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;)V

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->d:Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;

    new-instance v1, Lcom/phicomm/speaker/e/d$8;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/e/d$8;-><init>(Lcom/phicomm/speaker/e/d;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/devicelayer/DeviceStateMgr;->setDeviceLogListener(Lcom/unisound/lib/msgcenter/devicelayer/DeviceLogListener;)V

    .line 213
    invoke-static {}, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->getInstance()Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/d$9;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/e/d$9;-><init>(Lcom/phicomm/speaker/e/d;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->setUnBindDeviceStatelistener(Lcom/unisound/lib/bind/listener/IUnBindDeviceStatelistener;)V

    .line 221
    invoke-static {}, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->getInstance()Lcom/unisound/lib/time/mgr/AlarmStateMgr;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/e/e;->a:Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/mgr/AlarmStateMgr;->setAlarmStateChangeListener(Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public a(IILcom/unisound/lib/devices/callback/ILogMessageCallback;)V
    .locals 1

    .line 655
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;-><init>()V

    .line 656
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->setPageNo(I)V

    .line 657
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->setPageSize(I)V

    .line 658
    invoke-virtual {p0}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/LogReqInfo;->setUdid(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/unisound/lib/UnisDeviceAssistant;->getChatLog(Lcom/unisound/lib/msgcenter/bean/LogReqInfo;Lcom/unisound/lib/devices/callback/ILogMessageCallback;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V
    .locals 3

    .line 703
    invoke-virtual {p0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDeviceState()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setDeviceState(I)V

    .line 704
    invoke-virtual {p0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setOnline(Z)V

    .line 705
    iput-object p1, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 706
    iget-object p1, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "udid = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->saveOrUpdate([Ljava/lang/String;)Z

    move-result p1

    const-string v0, "UnisoundManager"

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upDateCurPhiDeviceInfo result =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UnisoundManager"

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceActive phiDeviceInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/e/d$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/phicomm/speaker/e/d$6;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/unisound/lib/UnisDeviceAssistant;->setDeviceActive(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/BindDevice$DevicesBean;",
            ">;>;)V"
        }
    .end annotation

    .line 606
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/lib/UnisDeviceAssistant;->getBindDeivces(Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/e/c/d;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->c:Lcom/unisound/lib/UnisAccountAssistant;

    new-instance v1, Lcom/phicomm/speaker/e/d$11;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/e/d$11;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/UnisAccountAssistant;->setLogoutListener(Lcom/unisound/lib/common/ICommonCallback;)V

    .line 283
    const-class p1, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/litepal/crud/DataSupport;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/phicomm/speaker/e/d;->c:Lcom/unisound/lib/UnisAccountAssistant;

    invoke-virtual {p1, p0}, Lcom/unisound/lib/UnisAccountAssistant;->exitUserCenter(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/e/c/e;)V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->f:Lcom/phicomm/speaker/model/d;

    new-instance v1, Lcom/phicomm/speaker/e/d$5;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/e/d$5;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/e;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/d;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Lcom/unisound/lib/listener/IMqttStateListener;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->e:Lcom/unisound/lib/msgcenter/DataChannelManager;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/DataChannelManager;->setMqttStateChangeListener(Lcom/unisound/lib/listener/IMqttStateListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/d;)V
    .locals 6

    const-string v0, "UnisoundManager"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAccount accessToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->c:Lcom/unisound/lib/UnisAccountAssistant;

    new-instance v1, Lcom/phicomm/speaker/e/d$10;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/e/d$10;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/UnisAccountAssistant;->setCallBack(Lcom/unisound/lib/common/ICommonCallback;)V

    .line 250
    iget-object p2, p0, Lcom/phicomm/speaker/e/d;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/unisound/lib/utils/SystemUitls;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->c:Lcom/unisound/lib/UnisAccountAssistant;

    const/4 v2, 0x7

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/UnisAccountAssistant;->bindAccount(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/callback/HttpDataCallback<",
            "Lcom/unisound/lib/msgcenter/bean/DeviceStatus;",
            ">;)V"
        }
    .end annotation

    .line 533
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    .line 534
    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/lib/UnisDeviceAssistant;->getDeviceOnlineState(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/c;)V
    .locals 15

    const-string v0, "UnisoundManager"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindHardDevice phoneNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";deviceUdid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p2

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deviceId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " model = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hardWareVers = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " romVersion = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " deviceType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/d$12;

    move-object v4, v1

    move-object v5, p0

    move-object v6, v13

    move-object v7, v14

    move-object v9, v3

    move-object/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Lcom/phicomm/speaker/e/d$12;-><init>(Lcom/phicomm/speaker/e/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/c;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/UnisDeviceAssistant;->setBindDeviceListener(Lcom/unisound/lib/common/ICommonCallback;)V

    .line 332
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v3

    const-string v6, "1"

    const-string v9, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    const/4 v8, 0x1

    move-object v4, v13

    move-object v5, v14

    move-object v7, v2

    invoke-virtual/range {v3 .. v9}, Lcom/unisound/lib/UnisDeviceAssistant;->bindDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/phicomm/speaker/e/c/d;)V
    .locals 2

    .line 380
    new-instance v0, Lcom/phicomm/speaker/e/d$14;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/e/d$14;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V

    .line 397
    const-class p1, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/litepal/crud/DataSupport;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 398
    new-instance p1, Lcom/phicomm/speaker/e/d$2;

    invoke-direct {p1, p0, v0}, Lcom/phicomm/speaker/e/d$2;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/c/e;)V

    return-void
.end method

.method public b(Lcom/unisound/lib/listener/IMqttStateListener;)V
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->e:Lcom/unisound/lib/msgcenter/DataChannelManager;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/DataChannelManager;->removeMqttStateChangeListener(Lcom/unisound/lib/listener/IMqttStateListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/d;)V
    .locals 3

    const-string v0, "UnisoundManager"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindUnisoundDevice deviceUdid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/d$13;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/e/d$13;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V

    invoke-virtual {v0, p1, v1}, Lcom/unisound/lib/UnisDeviceAssistant;->unbindDevice(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public c(Lcom/phicomm/speaker/e/c/d;)V
    .locals 1

    .line 492
    new-instance v0, Lcom/phicomm/speaker/e/d$4;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/e/d$4;-><init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/c/e;)V

    return-void
.end method

.method public d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;
    .locals 5

    .line 673
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    if-nez v0, :cond_3

    .line 674
    iget-boolean v0, p0, Lcom/phicomm/speaker/e/d;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "UnisoundManager"

    const-string v1, "getCurPhiDeviceInfo APP aready init!"

    .line 676
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    goto :goto_0

    .line 680
    :cond_0
    const-class v0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-static {v0, v2}, Lorg/litepal/crud/DataSupport;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    const-string v2, "UnisoundManager"

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurPhiDeviceInfo APP not init! phiDeviceInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 683
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 684
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    :cond_1
    if-nez v2, :cond_2

    .line 687
    new-instance v0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    goto :goto_0

    .line 689
    :cond_2
    iput-object v2, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 693
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->g:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/phicomm/speaker/e/d;->e:Lcom/unisound/lib/msgcenter/DataChannelManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/DataChannelManager;->openDataChannel(Z)V

    const/4 v0, 0x4

    .line 733
    sput v0, Lcom/phicomm/speaker/PhApplication;->b:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 760
    invoke-virtual {p0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
