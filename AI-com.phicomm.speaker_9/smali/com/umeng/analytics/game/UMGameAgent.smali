.class public Lcom/umeng/analytics/game/UMGameAgent;
.super Lcom/umeng/analytics/MobclickAgent;
.source "UMGameAgent.java"


# static fields
.field private static final a:Ljava/lang/String; = "Input string is null or empty"

.field private static final b:Ljava/lang/String; = "Input string must be less than 64 chars"

.field private static final c:Ljava/lang/String; = "Input value type is negative"

.field private static final d:Ljava/lang/String; = "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

.field private static final e:Lcom/umeng/analytics/game/b;

.field private static f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/umeng/analytics/game/b;

    invoke-direct {v0}, Lcom/umeng/analytics/game/b;-><init>()V

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/umeng/analytics/MobclickAgent;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 280
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bonus(DI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const/4 v0, 0x0

    if-gez v2, :cond_0

    const-string p0, "Input value type is negative"

    .line 240
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 241
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aQ:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    if-lez p2, :cond_2

    const/16 v1, 0x64

    if-lt p2, v1, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/game/b;->a(DI)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    .line 246
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 247
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aR:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static bonus(Ljava/lang/String;IDI)V
    .locals 8

    .line 254
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Input string is null or empty"

    .line 255
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 256
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aS:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    if-ltz p1, :cond_4

    const-wide/16 v2, 0x0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    if-lez p4, :cond_3

    const/16 v0, 0x64

    if-lt p4, v0, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    sget-object v2, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;IDI)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    .line 267
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 268
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aU:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p0, "Input value type is negative"

    .line 261
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 262
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aT:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static buy(Ljava/lang/String;ID)V
    .locals 4

    .line 194
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Input string is null or empty"

    .line 195
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 196
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aO:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    if-ltz p1, :cond_2

    const-wide/16 v2, 0x0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Input value type is negative"

    .line 201
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 202
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aP:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static exchange(DLjava/lang/String;DILjava/lang/String;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v4, p0, v0

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    cmpg-double v4, p3, v0

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    if-lez p5, :cond_2

    const/16 v0, 0x64

    if-lt p5, v0, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/analytics/game/b;->a(DLjava/lang/String;DILjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    .line 179
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/h;->aN:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {v0, v5, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "Input value type is negative"

    .line 174
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/h;->aM:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {v0, v5, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static failLevel(Ljava/lang/String;)V
    .locals 3

    .line 90
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Input string is null or empty"

    .line 91
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 92
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aF:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_1

    const-string p0, "Input string must be less than 64 chars"

    .line 96
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 97
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aG:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 100
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static finishLevel(Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Input string is null or empty"

    .line 72
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 73
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aD:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_1

    const-string p0, "Input string must be less than 64 chars"

    .line 77
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 78
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aE:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 81
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 26
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    .line 31
    :cond_0
    sget-object p0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "please check Context!"

    .line 33
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static pay(DDI)V
    .locals 10

    const/4 v0, 0x0

    if-lez p4, :cond_3

    const/16 v1, 0x64

    if-lt p4, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-ltz v3, :cond_2

    cmpg-double v3, p2, v1

    if-gez v3, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    sget-object v4, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v5, p0

    move-wide v7, p2

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/umeng/analytics/game/b;->a(DDI)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Input value type is negative"

    .line 118
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 119
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aH:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    .line 112
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 113
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aI:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static pay(DLjava/lang/String;IDI)V
    .locals 9

    const/4 v0, 0x0

    if-lez p6, :cond_4

    const/16 v1, 0x64

    if-lt p6, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-ltz v3, :cond_3

    if-ltz p3, :cond_3

    cmpg-double v3, p4, v1

    if-gez v3, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {p2}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "Input string is null or empty"

    .line 154
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 155
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aL:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 159
    :cond_2
    sget-object v1, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v2, p0

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/umeng/analytics/game/b;->a(DLjava/lang/String;IDI)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Input value type is negative"

    .line 148
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 149
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aK:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    .line 142
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 143
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aJ:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static setPlayerLevel(I)V
    .locals 1

    .line 42
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setTraceSleepTime(Z)V
    .locals 1

    .line 38
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->a(Z)V

    return-void
.end method

.method public static startLevel(Ljava/lang/String;)V
    .locals 3

    .line 51
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Input string is null or empty"

    .line 52
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 53
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aB:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_1

    const-string p0, "Input string must be less than 64 chars"

    .line 58
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 59
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aC:Ljava/lang/String;

    const-string v0, "\\|"

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 62
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static use(Ljava/lang/String;ID)V
    .locals 4

    .line 217
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Input string is null or empty"

    .line 218
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 219
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aV:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    if-ltz p1, :cond_2

    const-wide/16 v2, 0x0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/b;->b(Ljava/lang/String;ID)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Input value type is negative"

    .line 224
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 225
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object p0, Lcom/umeng/analytics/pro/h;->aW:Ljava/lang/String;

    const-string p1, "\\|"

    invoke-static {p0, v1, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
