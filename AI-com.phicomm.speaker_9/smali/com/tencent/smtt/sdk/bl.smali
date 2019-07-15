.class Lcom/tencent/smtt/sdk/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView$PictureListener;

.field final synthetic b:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebView$PictureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/bl;->b:Lcom/tencent/smtt/sdk/WebView;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/bl;->a:Lcom/tencent/smtt/sdk/WebView$PictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bl;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/bl;->a:Lcom/tencent/smtt/sdk/WebView$PictureListener;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bl;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-interface {p1, v0, p2}, Lcom/tencent/smtt/sdk/WebView$PictureListener;->onNewPicture(Lcom/tencent/smtt/sdk/WebView;Landroid/graphics/Picture;)V

    return-void
.end method
