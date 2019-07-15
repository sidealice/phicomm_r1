.class Lcom/phicomm/speaker/PhApplication$6;
.super Ljava/lang/Object;
.source "PhApplication.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/PhApplication;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/PhApplication;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/PhApplication;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/phicomm/speaker/PhApplication$6;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/g;)V
    .locals 0

    const-string p1, "connect Phi Mqtt success"

    .line 310
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V
    .locals 1

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect Phi Mqtt failure exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;)V

    return-void
.end method
