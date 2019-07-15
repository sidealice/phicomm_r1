.class Lcom/tencent/smtt/utils/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/utils/e$a;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/widget/RelativeLayout;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/tencent/smtt/utils/e;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/utils/e;Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/utils/f;->f:Lcom/tencent/smtt/utils/e;

    iput-object p2, p0, Lcom/tencent/smtt/utils/f;->a:Lcom/tencent/smtt/sdk/WebView;

    iput-object p3, p0, Lcom/tencent/smtt/utils/f;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/tencent/smtt/utils/f;->c:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/tencent/smtt/utils/f;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/smtt/utils/f;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/f;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/smtt/utils/g;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/utils/g;-><init>(Lcom/tencent/smtt/utils/f;)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/f;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v1, Lcom/tencent/smtt/utils/h;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/utils/h;-><init>(Lcom/tencent/smtt/utils/f;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/smtt/utils/f;->a:Lcom/tencent/smtt/sdk/WebView;

    new-instance v0, Lcom/tencent/smtt/utils/i;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/utils/i;-><init>(Lcom/tencent/smtt/utils/f;)V

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
