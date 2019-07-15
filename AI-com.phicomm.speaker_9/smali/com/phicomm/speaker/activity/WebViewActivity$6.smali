.class Lcom/phicomm/speaker/activity/WebViewActivity$6;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/jsbridge/JavaBridge$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/WebViewActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/WebViewActivity;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$6;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/jsbridge/JSData;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$6;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/WebViewActivity;->j()V

    .line 298
    iget-object p1, p0, Lcom/phicomm/speaker/activity/WebViewActivity$6;->a:Lcom/phicomm/speaker/activity/WebViewActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/WebViewActivity;->b(Lcom/phicomm/speaker/activity/WebViewActivity;)Lcom/phicomm/speaker/jsbridge/JavaBridge;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callbackSuccess(Lcom/phicomm/speaker/jsbridge/JavaBridge$c;Lcom/phicomm/speaker/jsbridge/JavaCallback;)V

    return-void
.end method
