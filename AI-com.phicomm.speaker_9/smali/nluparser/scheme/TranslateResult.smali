.class public Lnluparser/scheme/TranslateResult;
.super Ljava/lang/Object;
.source "TranslateResult.java"

# interfaces
.implements Lnluparser/scheme/Result;


# instance fields
.field errorCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "errorCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation
.end field

.field sententce:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sententce"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sententce"
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

.field translated:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "translated"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "translated"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 33
    iget v0, p0, Lnluparser/scheme/TranslateResult;->errorCode:I

    return v0
.end method

.method public getSententce()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lnluparser/scheme/TranslateResult;->sententce:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lnluparser/scheme/TranslateResult;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslated()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lnluparser/scheme/TranslateResult;->translated:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 37
    iput p1, p0, Lnluparser/scheme/TranslateResult;->errorCode:I

    return-void
.end method

.method public setSententce(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lnluparser/scheme/TranslateResult;->sententce:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lnluparser/scheme/TranslateResult;->target:Ljava/lang/String;

    return-void
.end method

.method public setTranslated(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lnluparser/scheme/TranslateResult;->translated:Ljava/lang/String;

    return-void
.end method
