.class public Lnluparser/scheme/ContactIntent;
.super Lnluparser/scheme/CallIntent;
.source "ContactIntent.java"


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

    .line 9
    invoke-direct {p0}, Lnluparser/scheme/CallIntent;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiverName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lnluparser/scheme/ContactIntent;->receiverName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverNumber()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lnluparser/scheme/ContactIntent;->receiverNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiverName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lnluparser/scheme/ContactIntent;->receiverName:Ljava/lang/String;

    return-void
.end method

.method public setReceiverNumber(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lnluparser/scheme/ContactIntent;->receiverNumber:Ljava/lang/String;

    return-void
.end method
