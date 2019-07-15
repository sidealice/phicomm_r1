.class Lcom/tencent/smtt/sdk/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$PictureListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView$PictureListener;

.field final synthetic b:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebView$PictureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/bm;->b:Lcom/tencent/smtt/sdk/WebView;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/bm;->a:Lcom/tencent/smtt/sdk/WebView$PictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Landroid/graphics/Picture;Z)V
    .locals 0

    iget-object p3, p0, Lcom/tencent/smtt/sdk/bm;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p3, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/bm;->a:Lcom/tencent/smtt/sdk/WebView$PictureListener;

    iget-object p3, p0, Lcom/tencent/smtt/sdk/bm;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-interface {p1, p3, p2}, Lcom/tencent/smtt/sdk/WebView$PictureListener;->onNewPicture(Lcom/tencent/smtt/sdk/WebView;Landroid/graphics/Picture;)V

    return-void
.end method

.method public onNewPictureIfHaveContent(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;Landroid/graphics/Picture;)V
    .locals 0

    return-void
.end method
