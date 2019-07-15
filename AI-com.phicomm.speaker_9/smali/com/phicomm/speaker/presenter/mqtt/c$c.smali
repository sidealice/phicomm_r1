.class Lcom/phicomm/speaker/presenter/mqtt/c$c;
.super Ljava/lang/Object;
.source "MqttDeviceStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/mqtt/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/c;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/c;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$c;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/c;Lcom/phicomm/speaker/presenter/mqtt/c$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/c$c;-><init>(Lcom/phicomm/speaker/presenter/mqtt/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$c;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProbeBean{timestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
