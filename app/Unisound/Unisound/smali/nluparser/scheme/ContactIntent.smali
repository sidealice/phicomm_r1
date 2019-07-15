.class public Lnluparser/scheme/ContactIntent;
.super Lnluparser/scheme/CallIntent;


# instance fields
.field receiverName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "receiverName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receiverName"
    .end annotation
.end field

.field receiverNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "receiverNumber"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receiverNumber"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnluparser/scheme/CallIntent;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiverName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ContactIntent;->receiverName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/ContactIntent;->receiverNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiverName(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiverName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ContactIntent;->receiverName:Ljava/lang/String;

    return-void
.end method

.method public setReceiverNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiverNumber"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ContactIntent;->receiverNumber:Ljava/lang/String;

    return-void
.end method
