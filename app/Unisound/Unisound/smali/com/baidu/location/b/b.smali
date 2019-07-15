.class public Lcom/baidu/location/b/b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/b$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field private static c:Lcom/baidu/location/b/b;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/telephony/TelephonyManager;

.field private e:Ljava/lang/Object;

.field private f:Lcom/baidu/location/b/a;

.field private g:Lcom/baidu/location/b/a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/baidu/location/b/b$a;

.field private j:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/b/b;->c:Lcom/baidu/location/b/b;

    sput-object v0, Lcom/baidu/location/b/b;->k:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->l:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->m:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->n:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->o:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    sput v1, Lcom/baidu/location/b/b;->a:I

    sput v1, Lcom/baidu/location/b/b;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;

    new-instance v0, Lcom/baidu/location/b/a;

    invoke-direct {v0}, Lcom/baidu/location/b/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iput-object v1, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    iput-object v1, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    iput-boolean v2, p0, Lcom/baidu/location/b/b;->j:Z

    iput-boolean v2, p0, Lcom/baidu/location/b/b;->q:Z

    return-void
.end method

.method private a(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move-object v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_10

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v3, "android.telephony.CellInfoGsm"

    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.telephony.CellInfoWcdma"

    invoke-virtual {v9, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.telephony.CellInfoLte"

    invoke-virtual {v9, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "android.telephony.CellInfoCdma"

    invoke-virtual {v9, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    if-lez v7, :cond_f

    const/4 v0, 0x0

    const/4 v11, 0x1

    if-ne v7, v11, :cond_9

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    :goto_4
    const-string v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-nez v2, :cond_c

    move v0, v7

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    goto :goto_3

    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x3

    goto :goto_3

    :cond_7
    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_8

    const/4 v7, 0x4

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x2

    if-ne v7, v3, :cond_a

    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_a
    const/4 v3, 0x3

    if-ne v7, v3, :cond_b

    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_b
    const/4 v3, 0x4

    if-ne v7, v3, :cond_4

    invoke-virtual {v10, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_c
    const/4 v0, 0x4

    if-ne v7, v0, :cond_d

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v6

    :goto_5
    const/4 v2, 0x4

    if-eq v7, v2, :cond_1

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x3

    if-ne v7, v0, :cond_e

    :try_start_5
    const-string v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v0, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :cond_e
    :try_start_7
    const-string v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v0, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :cond_f
    move v0, v7

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move v0, v7

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    move v0, v7

    goto/16 :goto_2

    :catch_3
    move-exception v2

    move-object v6, v0

    move v0, v7

    goto/16 :goto_2

    :catch_4
    move-exception v2

    move-object v6, v0

    move v0, v7

    goto/16 :goto_2

    :cond_10
    move v7, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_5
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/baidu/location/b/a;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v8, 0x67

    const/4 v5, 0x1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v4, 0x11

    if-ge v6, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v4, Lcom/baidu/location/b/a;

    invoke-direct {v4}, Lcom/baidu/location/b/a;-><init>()V

    instance-of v7, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v7, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/b;->a(I)I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    iput-char v8, v4, Lcom/baidu/location/b/a;->i:C

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->h:I

    move v2, v5

    :cond_1
    :goto_1
    const/16 v3, 0x12

    if-lt v6, v3, :cond_2

    if-nez v2, :cond_2

    :try_start_0
    instance-of v2, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/b;->a(I)I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    const/16 v2, 0x67

    iput-char v2, v4, Lcom/baidu/location/b/a;->i:C

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    iput-wide v2, v4, Lcom/baidu/location/b/a;->g:J
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object v2, v4

    goto/16 :goto_0

    :cond_3
    instance-of v7, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v7, :cond_8

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v7

    iput v7, v4, Lcom/baidu/location/b/a;->e:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v7

    iput v7, v4, Lcom/baidu/location/b/a;->f:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/baidu/location/b/b;->a(I)I

    move-result v7

    iput v7, v4, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/baidu/location/b/b;->a(I)I

    move-result v7

    iput v7, v4, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/b;->a(I)I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    const/16 v2, 0x63

    iput-char v2, v4, Lcom/baidu/location/b/a;->i:C

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->h:I

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->c:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->c:I

    iput v2, v4, Lcom/baidu/location/b/a;->c:I

    :cond_4
    :goto_4
    move v2, v5

    goto/16 :goto_1

    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_7

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-gez v2, :cond_6

    move v2, v3

    :cond_6
    move v3, v2

    :cond_7
    :goto_5
    if-lez v3, :cond_4

    iput v3, v4, Lcom/baidu/location/b/a;->c:I

    goto :goto_4

    :cond_8
    instance-of v3, p1, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/b;->a(I)I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    iput-char v8, v4, Lcom/baidu/location/b/a;->i:C

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->h:I

    move v2, v5

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/baidu/location/b/a;->g:J

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :catch_2
    move-exception v2

    goto :goto_5
.end method

.method private a(Landroid/telephony/CellLocation;)Lcom/baidu/location/b/a;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellLocation;Z)Lcom/baidu/location/b/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;Z)Lcom/baidu/location/b/a;
    .locals 10

    const/4 v2, 0x0

    const v9, 0x7fffffff

    const/4 v8, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v4, Lcom/baidu/location/b/a;

    invoke-direct {v4}, Lcom/baidu/location/b/a;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/baidu/location/b/a;->f()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/location/b/a;->g:J

    :try_start_0
    iget-object v5, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_4

    const/4 v5, 0x0

    const/4 v7, 0x3

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v5, v5, Lcom/baidu/location/b/a;->c:I

    :cond_3
    iput v5, v4, Lcom/baidu/location/b/a;->c:I

    :cond_4
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_5

    aget-char v7, v6, v3

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v3, v3, Lcom/baidu/location/b/a;->d:I

    :cond_6
    iput v3, v4, Lcom/baidu/location/b/a;->d:I

    :cond_7
    iget-object v3, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    sput v3, Lcom/baidu/location/b/b;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    instance-of v3, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_a

    move-object v2, p1

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->a:I

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    const/16 v2, 0x67

    iput-char v2, v4, Lcom/baidu/location/b/a;->i:C

    :cond_8
    :goto_3
    invoke-direct {p0, v4}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/a;)V

    move-object v2, v4

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v3, 0x1

    sput v3, Lcom/baidu/location/b/b;->b:I

    goto :goto_2

    :cond_a
    instance-of v3, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_8

    const/16 v3, 0x63

    iput-char v3, v4, Lcom/baidu/location/b/a;->i:C

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v5, :cond_b

    move-object v2, v4

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    if-nez v3, :cond_c

    :try_start_1
    const-string v3, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getBaseStationId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->k:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getNetworkId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->l:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getSystemId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->m:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getBaseStationLatitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->n:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getBaseStationLongitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->o:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_c
    sget-object v2, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_2
    sget-object v2, Lcom/baidu/location/b/b;->m:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_d

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->d:I

    :cond_d
    iput v2, v4, Lcom/baidu/location/b/a;->d:I

    sget-object v2, Lcom/baidu/location/b/b;->k:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    sget-object v2, Lcom/baidu/location/b/b;->l:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->a:I

    sget-object v2, Lcom/baidu/location/b/b;->n:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v9, :cond_e

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->e:I

    :cond_e
    sget-object v2, Lcom/baidu/location/b/b;->o:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v9, :cond_8

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    sput v8, Lcom/baidu/location/b/b;->b:I

    move-object v2, v4

    goto/16 :goto_0

    :catch_2
    move-exception v3

    sput-object v2, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const/4 v2, 0x2

    sput v2, Lcom/baidu/location/b/b;->b:I

    move-object v2, v4

    goto/16 :goto_0
.end method

.method public static declared-synchronized a()Lcom/baidu/location/b/b;
    .locals 2

    const-class v1, Lcom/baidu/location/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/location/b/b;->c:Lcom/baidu/location/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/b;

    invoke-direct {v0}, Lcom/baidu/location/b/b;-><init>()V

    sput-object v0, Lcom/baidu/location/b/b;->c:Lcom/baidu/location/b/b;

    :cond_0
    sget-object v0, Lcom/baidu/location/b/b;->c:Lcom/baidu/location/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/baidu/location/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/b/b;->k()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    return-object v0
.end method

.method private c(Lcom/baidu/location/b/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {p1}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/baidu/location/b/a;->b:I

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->b:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/baidu/location/b/a;->a:I

    iget-object v1, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->a:I

    if-eq v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/baidu/location/b/b;->j()V

    iput-boolean v3, p0, Lcom/baidu/location/b/b;->q:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method private d(Lcom/baidu/location/b/a;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v5, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "&nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellInfo;)Lcom/baidu/location/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/baidu/location/b/a;->a:I

    if-eq v3, v5, :cond_0

    iget v3, v0, Lcom/baidu/location/b/a;->b:I

    if-eq v3, v5, :cond_0

    iget v3, p1, Lcom/baidu/location/b/a;->a:I

    iget v4, v0, Lcom/baidu/location/b/a;->a:I

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/baidu/location/b/a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/baidu/location/b/a;->h:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/baidu/location/b/a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/baidu/location/b/a;->h:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private i()V
    .locals 14

    invoke-static {}, Lcom/baidu/location/d/j;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lcvif.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v9, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    const/4 v0, 0x3

    if-ge v7, v0, :cond_7

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    const/16 v6, 0x67

    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    const/16 v6, 0x63

    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-nez v0, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/baidu/location/b/a;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/b/a;-><init>(IIIIIC)V

    iput-wide v10, v0, Lcom/baidu/location/b/a;->g:J

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/b/b;->q:Z

    iget-object v1, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private j()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/baidu/location/d/j;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lcvif.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v4, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget-wide v6, v0, Lcom/baidu/location/b/a;->g:J

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move v0, v1

    :goto_1
    rsub-int/lit8 v2, v3, 0x3

    if-ge v0, v2, :cond_4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v1, v3, :cond_7

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget-wide v6, v0, Lcom/baidu/location/b/a;->g:J

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v0, v0, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v0, v0, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v0, v0, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v0, v0, Lcom/baidu/location/b/a;->b:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v2, 0x67

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v2, 0x63

    if-ne v0, v2, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/location/b/b;->n()Lcom/baidu/location/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/a;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellLocation;)Lcom/baidu/location/b/a;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/baidu/location/b/b;->l()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellLocation;Z)Lcom/baidu/location/b/a;

    :cond_4
    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method

.method private l()Landroid/telephony/CellLocation;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/b/b;->m()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getCellLocation"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v0

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    :try_start_3
    const-string v3, "getCellLocationGemini"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v4, 0x1

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v0

    :cond_2
    :goto_3
    if-nez v0, :cond_3

    :try_start_5
    const-string v0, "getAllCellInfo"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v3, 0x0

    :try_start_6
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    :try_start_7
    invoke-direct {p0, v0}, Lcom/baidu/location/b/b;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_6
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :catch_5
    move-exception v3

    goto :goto_3

    :catch_6
    move-exception v3

    goto :goto_3

    :catch_7
    move-exception v3

    goto :goto_2

    :catch_8
    move-exception v3

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_6

    :cond_5
    move-object v0, v1

    goto :goto_5
.end method

.method private m()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0}, Lcom/baidu/location/b/b;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string v0, "android.telephony.TelephonyManager"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private n()Lcom/baidu/location/b/a;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-direct {p0, v0}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellInfo;)Lcom/baidu/location/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v5

    if-nez v5, :cond_5

    move-object v0, v2

    :cond_4
    if-nez v1, :cond_6

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/b/a;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method

.method private o()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    const-string v1, "android.telephony.TelephonyManager2"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x2

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/baidu/location/b/a;)Ljava/lang/String;
    .locals 7

    const/4 v6, -0x1

    const-string v0, ""

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/location/b/b;->d(Lcom/baidu/location/b/a;)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "&nc="

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&nc="

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v4

    if-eq v4, v6, :cond_5

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    if-eq v5, v6, :cond_5

    iget v5, p1, Lcom/baidu/location/b/a;->a:I

    if-eq v5, v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    :cond_2
    :goto_3
    if-eqz v0, :cond_0

    const-string v1, "&nc="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method public b(Lcom/baidu/location/b/a;)Ljava/lang/String;
    .locals 12

    const v11, 0x7fffffff

    const/4 v7, 0x2

    const/4 v10, 0x1

    const-wide v8, 0x40cc200000000000L    # 14400.0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "&nw="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v0, p1, Lcom/baidu/location/b/a;->i:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "&cl=%d|%d|%d|%d&cl_s=%d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/baidu/location/b/a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p1, Lcom/baidu/location/b/a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget v5, p1, Lcom/baidu/location/b/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget v6, p1, Lcom/baidu/location/b/a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, p1, Lcom/baidu/location/b/a;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lcom/baidu/location/b/a;->e:I

    if-ge v0, v11, :cond_0

    iget v0, p1, Lcom/baidu/location/b/a;->f:I

    if-ge v0, v11, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "&cdmall=%.6f|%.6f"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Lcom/baidu/location/b/a;->f:I

    int-to-double v6, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p1, Lcom/baidu/location/b/a;->e:I

    int-to-double v6, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "&cl_t="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v0, p1, Lcom/baidu/location/b/a;->g:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v0, "&clt="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_5

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v5, v0, Lcom/baidu/location/b/a;->c:I

    iget v6, p1, Lcom/baidu/location/b/a;->c:I

    if-eq v5, v6, :cond_1

    iget v5, v0, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v0, Lcom/baidu/location/b/a;->d:I

    iget v6, p1, Lcom/baidu/location/b/a;->d:I

    if-eq v5, v6, :cond_2

    iget v5, v0, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v0, Lcom/baidu/location/b/a;->a:I

    iget v6, p1, Lcom/baidu/location/b/a;->a:I

    if-eq v5, v6, :cond_3

    iget v5, v0, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v0, Lcom/baidu/location/b/a;->b:I

    iget v6, p1, Lcom/baidu/location/b/a;->b:I

    if-eq v5, v6, :cond_4

    iget v5, v0, Lcom/baidu/location/b/a;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/baidu/location/b/a;->g:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    sget v0, Lcom/baidu/location/b/b;->a:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_6

    sput v2, Lcom/baidu/location/b/b;->a:I

    :cond_6
    sget v0, Lcom/baidu/location/b/b;->b:I

    shl-int/lit8 v0, v0, 0x8

    sget v1, Lcom/baidu/location/b/b;->a:I

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/baidu/location/b/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/baidu/location/b/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/b/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/baidu/location/f;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    new-instance v0, Lcom/baidu/location/b/b$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/b$a;-><init>(Lcom/baidu/location/b/b;)V

    iput-object v0, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    invoke-direct {p0}, Lcom/baidu/location/b/b;->i()V

    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    const/16 v2, 0x110

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/baidu/location/b/b;->o()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/baidu/location/b/b;->j:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    :try_start_5
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/baidu/location/d/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :pswitch_1
    :try_start_7
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/baidu/location/d/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/baidu/location/d/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/b/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/location/b/b;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/b;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/b;->q:Z

    return v0
.end method

.method public e()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public f()Lcom/baidu/location/b/a;
    .locals 7

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/b/b;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    new-instance v0, Lcom/baidu/location/b/a;

    iget-object v1, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->a:I

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->b:I

    iget-object v3, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v3, v3, Lcom/baidu/location/b/a;->c:I

    iget-object v4, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v4, v4, Lcom/baidu/location/b/a;->d:I

    iget-object v5, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v5, v5, Lcom/baidu/location/b/a;->h:I

    iget-object v6, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget-char v6, v6, Lcom/baidu/location/b/a;->i:C

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/b/a;-><init>(IIIIIC)V

    iput-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget-object v1, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->d:I

    iput v1, v0, Lcom/baidu/location/b/a;->d:I

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget-object v1, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->c:I

    iput v1, v0, Lcom/baidu/location/b/a;->c:I

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public h()I
    .locals 2

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
