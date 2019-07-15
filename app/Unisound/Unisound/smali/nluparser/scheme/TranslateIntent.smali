.class public Lnluparser/scheme/TranslateIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# instance fields
.field sentence:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sentence"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sentence"
    .end annotation
.end field

.field source:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "source"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field target:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "target"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSentence()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TranslateIntent;->sentence:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TranslateIntent;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TranslateIntent;->target:Ljava/lang/String;

    return-object v0
.end method

.method public setSentence(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TranslateIntent;->sentence:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TranslateIntent;->source:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TranslateIntent;->target:Ljava/lang/String;

    return-void
.end method
