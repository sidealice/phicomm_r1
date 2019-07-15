.class Lcom/phicomm/speaker/activity/JsBridgeActivity$10;
.super Ljava/lang/Object;
.source "JsBridgeActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/jsbridge/JavaBridge$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/JsBridgeActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/JsBridgeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$10;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/jsbridge/JSData;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V
    .locals 3

    .line 323
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$10;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->c(Lcom/phicomm/speaker/activity/JsBridgeActivity;)Lcom/phicomm/speaker/jsbridge/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/jsbridge/a;->b()Ljava/lang/String;

    move-result-object p1

    .line 324
    new-instance v0, Lcom/phicomm/speaker/jsbridge/JavaCallback;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/phicomm/speaker/jsbridge/JavaCallback;-><init>(ILjava/lang/String;)V

    .line 325
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/jsbridge/JavaCallback;->setAccessToken(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$10;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->b(Lcom/phicomm/speaker/activity/JsBridgeActivity;)Lcom/phicomm/speaker/jsbridge/JavaBridge;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->callbackSuccess(Lcom/phicomm/speaker/jsbridge/JavaBridge$c;Lcom/phicomm/speaker/jsbridge/JavaCallback;)V

    return-void
.end method
