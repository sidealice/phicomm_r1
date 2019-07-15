.class Lcom/phicomm/speaker/jsbridge/JavaBridge$3;
.super Ljava/lang/Object;
.source "JavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/jsbridge/JavaBridge;->_dispatchMessage(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/jsbridge/JavaBridge;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    iput-object p2, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    invoke-static {v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->access$100(Lcom/phicomm/speaker/jsbridge/JavaBridge;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    invoke-static {v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->access$100(Lcom/phicomm/speaker/jsbridge/JavaBridge;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    invoke-static {v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->access$200(Lcom/phicomm/speaker/jsbridge/JavaBridge;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    invoke-static {v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->access$200(Lcom/phicomm/speaker/jsbridge/JavaBridge;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
