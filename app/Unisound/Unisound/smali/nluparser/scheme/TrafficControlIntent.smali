.class public Lnluparser/scheme/TrafficControlIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# instance fields
.field city:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "city"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field date:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "date"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field focus:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "focus"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "focus"
    .end annotation
.end field

.field timeExpr:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "timeExpr"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeExpr"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TrafficControlIntent;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TrafficControlIntent;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TrafficControlIntent;->focus:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeExpr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TrafficControlIntent;->timeExpr:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TrafficControlIntent;->city:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TrafficControlIntent;->date:Ljava/lang/String;

    return-void
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TrafficControlIntent;->focus:Ljava/lang/String;

    return-void
.end method

.method public setTimeExpr(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeExpr"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TrafficControlIntent;->timeExpr:Ljava/lang/String;

    return-void
.end method
