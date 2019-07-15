.class public Lnluparser/scheme/CallIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# static fields
.field public static final TYPE_ASSISTANT:Ljava/lang/String; = "TYPE_ASSISTANT"

.field public static final TYPE_CAR:Ljava/lang/String; = "TYPE_CAR"

.field public static final TYPE_HOME:Ljava/lang/String; = "TYPE_HOME"

.field public static final TYPE_MOBILE:Ljava/lang/String; = "TYPE_MOBILE"

.field public static final TYPE_WORK:Ljava/lang/String; = "TYPE_WORK"


# instance fields
.field method:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "method"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field number:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "number"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CallIntent;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CallIntent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CallIntent;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CallIntent;->method:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CallIntent;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CallIntent;->number:Ljava/lang/String;

    return-void
.end method
