.class Lcom/phicomm/speaker/jsbridge/JavaBridge$4;
.super Ljava/lang/Object;
.source "JavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/jsbridge/JavaBridge;->_handleMessageFromJs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/jsbridge/JavaBridge$c;

.field final synthetic c:Lcom/phicomm/speaker/jsbridge/JavaBridge$b;

.field final synthetic d:Lcom/phicomm/speaker/jsbridge/JavaBridge;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/jsbridge/JavaBridge;Ljava/lang/String;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;Lcom/phicomm/speaker/jsbridge/JavaBridge$b;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->d:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    iput-object p2, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge$c;

    iput-object p4, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->c:Lcom/phicomm/speaker/jsbridge/JavaBridge$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->a:Ljava/lang/String;

    const-class v1, Lcom/phicomm/speaker/jsbridge/JSData;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/jsbridge/JSData;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->d:Lcom/phicomm/speaker/jsbridge/JavaBridge;

    iget-object v1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge$c;

    const/16 v2, 0x66

    const-string v3, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/jsbridge/JavaBridge;->access$400(Lcom/phicomm/speaker/jsbridge/JavaBridge;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;ILjava/lang/String;)V

    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->c:Lcom/phicomm/speaker/jsbridge/JavaBridge$b;

    iget-object v2, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge$c;

    invoke-interface {v1, v0, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge$b;->a(Lcom/phicomm/speaker/jsbridge/JSData;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->c:Lcom/phicomm/speaker/jsbridge/JavaBridge$b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/phicomm/speaker/jsbridge/JavaBridge$4;->b:Lcom/phicomm/speaker/jsbridge/JavaBridge$c;

    invoke-interface {v0, v1, v2}, Lcom/phicomm/speaker/jsbridge/JavaBridge$b;->a(Lcom/phicomm/speaker/jsbridge/JSData;Lcom/phicomm/speaker/jsbridge/JavaBridge$c;)V

    :goto_0
    return-void
.end method
