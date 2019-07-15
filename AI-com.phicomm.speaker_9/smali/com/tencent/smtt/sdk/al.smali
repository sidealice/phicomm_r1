.class final Lcom/tencent/smtt/sdk/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/utils/n$a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;


# direct methods
.method constructor <init>(ZLcom/tencent/smtt/sdk/TbsDownloadConfig;)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/al;->a:Z

    iput-object p2, p0, Lcom/tencent/smtt/sdk/al;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsDownloader.sendRequest] httpResponseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/tencent/smtt/sdk/al;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/al;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    const/16 v0, -0x6b

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/al;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    const/16 v0, -0xcf

    goto :goto_0

    :cond_1
    return-void
.end method
