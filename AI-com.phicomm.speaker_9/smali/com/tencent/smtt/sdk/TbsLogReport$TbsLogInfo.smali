.class public Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/TbsLogReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TbsLogInfo"
.end annotation


# instance fields
.field a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:J

.field private m:J

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->resetArgs()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/smtt/sdk/aw;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I
    .locals 0

    iget p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->e:I

    return p0
.end method

.method static synthetic e(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I
    .locals 0

    iget p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->f:I

    return p0
.end method

.method static synthetic f(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I
    .locals 0

    iget p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->g:I

    return p0
.end method

.method static synthetic g(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I
    .locals 0

    iget p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->h:I

    return p0
.end method

.method static synthetic h(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I
    .locals 0

    iget p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->j:I

    return p0
.end method

.method static synthetic j(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I
    .locals 0

    iget p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->k:I

    return p0
.end method

.method static synthetic k(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->q:J

    return-wide v0
.end method

.method static synthetic l(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->l:J

    return-wide v0
.end method

.method static synthetic m(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->m:J

    return-wide v0
.end method

.method static synthetic n(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I
    .locals 0

    iget p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->n:I

    return p0
.end method

.method static synthetic o(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->p:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method public getDownFinalFlag()I
    .locals 1

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->k:I

    return v0
.end method

.method public resetArgs()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->b:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->d:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->e:I

    iput v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->f:I

    iput v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->g:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->h:I

    const-string v5, "unknown"

    iput-object v5, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->i:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->j:I

    iput v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->k:I

    iput-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->l:J

    iput-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->m:J

    const/4 v4, 0x1

    iput v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->n:I

    iput v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->p:Ljava/lang/String;

    iput-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->q:J

    return-void
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setCheckErrorDetail(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->o:Ljava/lang/String;

    return-void
.end method

.method public setDownConsumeTime(J)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->m:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->m:J

    return-void
.end method

.method public setDownFinalFlag(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->k:I

    return-void
.end method

.method public setDownloadCancel(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->g:I

    return-void
.end method

.method public setDownloadSize(J)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->q:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->q:J

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->c:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    return-void
.end method

.method public setErrorCode(I)V
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x6f

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    const/16 v2, 0x6e

    if-eq p1, v2, :cond_0

    const/16 v2, 0x78

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v2, 0x190

    if-ge p1, v2, :cond_0

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occured, errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-ne p1, v1, :cond_1

    const-string v1, "TbsDownload"

    const-string v2, "you are not in wifi, downloading stoped"

    invoke-static {v1, v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    return-void
.end method

.method public setEventTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->b:J

    return-void
.end method

.method public setFailDetail(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public setFailDetail(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->p:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public setHttpCode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->e:I

    return-void
.end method

.method public setNetworkChange(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->n:I

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->j:I

    return-void
.end method

.method public setPatchUpdateFlag(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->f:I

    return-void
.end method

.method public setPkgSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->l:J

    return-void
.end method

.method public setResolveIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setUnpkgFlag(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->h:I

    return-void
.end method
