.class public Lcom/umeng/commonsdk/statistics/noise/Defcon;
.super Ljava/lang/Object;
.source "Defcon.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static final LEVEL_0:I = 0x0

.field private static final LEVEL_1:I = 0x1

.field private static final LEVEL_2:I = 0x2

.field private static final LEVEL_3:I = 0x3

.field private static final MILLIS_24_HOURS:J = 0x5265c00L

.field private static final MILLIS_4_HOURS:J = 0xdbba00L

.field private static final MILLIS_8_HOURS:J = 0x1b77400L

.field private static instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/statistics/noise/Defcon;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    const-string v1, "defcon"

    const-string v2, "0"

    .line 38
    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->setLevel(I)V

    .line 41
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->instanse:Lcom/umeng/commonsdk/statistics/noise/Defcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    return v0
.end method

.method public getReqInterval()J
    .locals 2

    .line 53
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0x5265c00

    return-wide v0

    :pswitch_1
    const-wide/32 v0, 0x1b77400

    return-wide v0

    :pswitch_2
    const-wide/32 v0, 0xdbba00

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRetryInterval()J
    .locals 2

    .line 67
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x493e0

    :goto_0
    return-wide v0
.end method

.method public isOpen()Z
    .locals 1

    .line 77
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 2

    const-string v0, "defcon"

    const/4 v1, 0x0

    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->setLevel(I)V

    return-void
.end method

.method public setLevel(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 72
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/Defcon;->mLevel:I

    :cond_0
    return-void
.end method
