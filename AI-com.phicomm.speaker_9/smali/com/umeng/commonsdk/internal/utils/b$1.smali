.class Lcom/umeng/commonsdk/internal/utils/b$1;
.super Landroid/telephony/PhoneStateListener;
.source "BaseStationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/utils/b;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/utils/b;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 7

    .line 65
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    const-string v0, "BaseStationUtils"

    const/4 v1, 0x1

    .line 67
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "base station onSignalStrengthsChanged"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 70
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 73
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 78
    iget-object v3, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v3}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v5, 0xd

    const/16 v6, 0x9

    if-ne v3, v5, :cond_0

    .line 80
    aget-object p1, v0, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 84
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 85
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 86
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    const/16 v0, -0x71

    const/4 v2, 0x2

    mul-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 89
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->b(Lcom/umeng/commonsdk/internal/utils/b;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "0"

    goto :goto_1

    .line 94
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 99
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_1
    move-object p1, v2

    :goto_2
    const-string v0, "BaseStationUtils"

    .line 114
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stationStrength is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_6

    .line 117
    :try_start_1
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x8004

    .line 118
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v2

    .line 117
    invoke-static {v0, v1, v2, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :catch_0
    :cond_6
    :try_start_2
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/internal/utils/b;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method
