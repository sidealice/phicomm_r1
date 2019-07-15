.class Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/util/IWxCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->c(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/f/a/s;

    invoke-direct {p2, p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/s;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public varargs onSuccess([Ljava/lang/Object;)V
    .locals 8

    const-string v0, "WXMediaRecorder"

    const-string v1, "mRecordCallback onSuccess"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :try_start_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->a(Ljava/io/File;)[B

    move-result-object p1

    new-instance v7, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {v7}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "[\r|\n]"

    const-string v0, ""

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "audioData"

    invoke-virtual {v7, p1, v4}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "duration"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audioFile"

    invoke-virtual {v7, p1, v6}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->c(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
