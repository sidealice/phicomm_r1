.class public abstract Lcom/alibaba/sdk/android/feedback/xblink/f/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->a:Landroid/content/Context;

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/f/b;)Z
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->c:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->c:Z

    return-void
.end method
