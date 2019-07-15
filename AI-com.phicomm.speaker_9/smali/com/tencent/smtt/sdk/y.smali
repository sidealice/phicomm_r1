.class Lcom/tencent/smtt/sdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/x;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/y;->a:Lcom/tencent/smtt/sdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/y;->a:Lcom/tencent/smtt/sdk/x;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/x;->a(Lcom/tencent/smtt/sdk/x;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceLoadX5FromTBSDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/y;->a:Lcom/tencent/smtt/sdk/x;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/x;->a(Lcom/tencent/smtt/sdk/x;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->needDownload(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/y;->a:Lcom/tencent/smtt/sdk/x;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/x;->a(Lcom/tencent/smtt/sdk/x;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->startDownload(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
