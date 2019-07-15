.class Lcom/tencent/smtt/sdk/bd;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Lcom/tencent/smtt/export/external/DexLoader;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/sdk/an;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "TbsDexOpt"

    iput-object v1, p0, Lcom/tencent/smtt/sdk/bd;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->g:Ljava/lang/String;

    const-string v0, "TbsWizard"

    const-string v1, "construction start..."

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p5, :cond_8

    array-length v0, p5

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/bd;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/bd;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/smtt/sdk/bd;->d:[Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/smtt/sdk/bd;->f:Ljava/lang/String;

    const/4 p3, 0x1

    if-eqz p7, :cond_1

    const-string p5, "load_tbs_dex"

    invoke-virtual {p7, p5, p3}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_1
    new-instance p5, Lcom/tencent/smtt/export/external/DexLoader;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/bd;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/bd;->d:[Ljava/lang/String;

    sget-object v5, Lcom/tencent/smtt/sdk/QbSdk;->k:Ljava/util/Map;

    move-object v0, p5

    move-object v1, p6

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p5, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 p4, 0x2

    if-eqz p7, :cond_2

    const-string p5, "load_tbs_dex"

    invoke-virtual {p7, p5, p4}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_2
    iget-object p5, p0, Lcom/tencent/smtt/sdk/bd;->c:Ljava/lang/String;

    invoke-static {p2, p5}, Lcom/tencent/smtt/export/external/libwebp;->loadWepLibraryIfNeed(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "com.nd.android.pandahome2"

    iget-object p5, p0, Lcom/tencent/smtt/sdk/bd;->a:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string p6, "com.tencent.tbs.common.beacon.X5CoreBeaconUploader"

    const-string v0, "getInstance"

    new-array v1, p3, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, p5

    new-array v2, p3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/bd;->a:Landroid/content/Context;

    aput-object v3, v2, p5

    invoke-virtual {p2, p6, v0, v1, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p2, Lcom/tencent/smtt/sdk/QbSdk;->k:Ljava/util/Map;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string p6, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v0, "initTbsSettings"

    new-array v1, p3, [Ljava/lang/Class;

    const-class v2, Ljava/util/Map;

    aput-object v2, v1, p5

    new-array v2, p3, [Ljava/lang/Object;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->k:Ljava/util/Map;

    aput-object v3, v2, p5

    invoke-virtual {p2, p6, v0, v1, v2}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p7, :cond_5

    const-string p2, "init_tbs"

    invoke-virtual {p7, p2, p3}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/bd;->a(Landroid/content/Context;)I

    move-result p1

    if-eqz p7, :cond_6

    const-string p2, "init_tbs"

    invoke-virtual {p7, p2, p4}, Lcom/tencent/smtt/sdk/an;->a(Ljava/lang/String;B)V

    :cond_6
    if-gez p1, :cond_7

    new-instance p2, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TbsWizard init error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; msg: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/smtt/sdk/bd;->g:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string p1, "TbsWizard"

    const-string p2, "construction end..."

    invoke-static {p1, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_0
    new-instance p4, Ljava/lang/Exception;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "TbsWizard paramter error:-1callerContext:"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "hostcontext"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "isEmpty"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "dexfileList"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private a(Landroid/content/Context;)I
    .locals 14

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "putInfo"

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/String;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v6

    sget-object v11, Lcom/tencent/smtt/utils/b;->a:Ljava/lang/String;

    aput-object v11, v5, v7

    sget-object v11, Lcom/tencent/smtt/utils/b;->b:Ljava/lang/String;

    aput-object v11, v5, v8

    sget-object v11, Lcom/tencent/smtt/utils/b;->c:Ljava/lang/String;

    aput-object v11, v5, v9

    sget-object v11, Lcom/tencent/smtt/utils/b;->d:Ljava/lang/String;

    aput-object v11, v5, v10

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "initTesRuntimeEnvironment"

    const/16 v4, 0x8

    new-array v5, v4, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v5, v6

    const-class v11, Landroid/content/Context;

    aput-object v11, v5, v7

    const-class v11, Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v11, v5, v8

    const-class v11, Ljava/lang/String;

    aput-object v11, v5, v9

    const-class v11, Ljava/lang/String;

    aput-object v11, v5, v10

    const-class v11, Ljava/lang/String;

    aput-object v11, v5, v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x6

    aput-object v11, v5, v12

    const-class v11, Ljava/lang/String;

    const/4 v13, 0x7

    aput-object v11, v5, v13

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    iget-object v11, p0, Lcom/tencent/smtt/sdk/bd;->b:Landroid/content/Context;

    aput-object v11, v4, v7

    iget-object v11, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v11, v4, v8

    iget-object v11, p0, Lcom/tencent/smtt/sdk/bd;->c:Ljava/lang/String;

    aput-object v11, v4, v9

    iget-object v11, p0, Lcom/tencent/smtt/sdk/bd;->f:Ljava/lang/String;

    aput-object v11, v4, v10

    const-string v11, "3.2.0.1104"

    aput-object v11, v4, v3

    const v11, 0xa8c0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v12

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->a()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v13

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/bd;->c()V

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/bd;->d()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "initTesRuntimeEnvironment"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    const-class v5, Lcom/tencent/smtt/export/external/DexLoader;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v10

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    iget-object p1, p0, Lcom/tencent/smtt/sdk/bd;->b:Landroid/content/Context;

    aput-object p1, v3, v7

    iget-object p1, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    aput-object p1, v3, v8

    iget-object p1, p0, Lcom/tencent/smtt/sdk/bd;->c:Ljava/lang/String;

    aput-object p1, v3, v9

    iget-object p1, p0, Lcom/tencent/smtt/sdk/bd;->f:Ljava/lang/String;

    aput-object p1, v3, v10

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, -0x3

    goto :goto_0

    :cond_1
    instance-of p1, v0, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/smtt/sdk/bd;->a:Landroid/content/Context;

    const/16 v2, 0x148

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1, v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const/4 p1, -0x5

    goto :goto_0

    :cond_3
    const/4 p1, -0x4

    :goto_0
    if-gez p1, :cond_5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "getLoadFailureDetails"

    new-array v3, v6, [Ljava/lang/Class;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; th: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/smtt/sdk/bd;->g:Ljava/lang/String;

    :cond_4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/tencent/smtt/sdk/bd;->g:Ljava/lang/String;

    :cond_6
    return p1
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "setTesSdkVersionName"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "3.2.0.1104"

    aput-object v5, v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v2, "VERSION"

    const v3, 0xa8c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->setStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v2, "invokeStaticMethod"

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, [Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, [Ljava/lang/Object;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "com.tencent.smtt.util.CrashTracker"

    aput-object v5, v3, v7

    const-string v5, "getCrashExtraInfo"

    aput-object v5, v3, v8

    const/4 v5, 0x0

    aput-object v5, v3, v9

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v7, v3, v10

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.smtt.util.CrashTracker"

    const-string v2, "getCrashExtraInfo"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ReaderPackName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ReaderPackVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsReaderView;->gReaderPackVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-nez v5, :cond_2

    const-string v5, "X5 core get nothing..."

    :cond_2
    return-object v5
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v2, "installLocalQbApk"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Landroid/os/Bundle;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    aput-object p4, v3, v9

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v6

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b()Lcom/tencent/smtt/export/external/DexLoader;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bd;->e:Lcom/tencent/smtt/export/external/DexLoader;

    return-object v0
.end method
