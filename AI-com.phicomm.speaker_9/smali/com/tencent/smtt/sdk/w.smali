.class Lcom/tencent/smtt/sdk/w;
.super Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;

.field final synthetic b:Lcom/tencent/smtt/sdk/s;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/s;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/w;->b:Lcom/tencent/smtt/sdk/s;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;-><init>()V

    return-void
.end method


# virtual methods
.method public createIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilenameHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;->getFilenameHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;->getMode()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/w;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;

    invoke-virtual {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v0

    return v0
.end method
