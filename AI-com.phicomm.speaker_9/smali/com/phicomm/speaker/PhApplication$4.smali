.class Lcom/phicomm/speaker/PhApplication$4;
.super Ljava/lang/Object;
.source "PhApplication.java"

# interfaces
.implements Lcom/unisound/lib/listener/IMqttStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/PhApplication;->f()V
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

    .line 196
    iput-object p1, p0, Lcom/phicomm/speaker/PhApplication$4;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMqttConnect()V
    .locals 3

    const/4 v0, 0x1

    .line 199
    sput v0, Lcom/phicomm/speaker/PhApplication;->b:I

    const-string v0, "DataChannel"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unisound onMqttConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/phicomm/speaker/PhApplication;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMqttConnectFailed()V
    .locals 3

    const/4 v0, 0x3

    .line 211
    sput v0, Lcom/phicomm/speaker/PhApplication;->b:I

    const-string v0, "DataChannel"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unisound onMqttConnectFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/phicomm/speaker/PhApplication;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMqttDisConnected()V
    .locals 3

    const/4 v0, 0x2

    .line 205
    sput v0, Lcom/phicomm/speaker/PhApplication;->b:I

    const-string v0, "DataChannel"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unisound onMqttDisConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/phicomm/speaker/PhApplication;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
