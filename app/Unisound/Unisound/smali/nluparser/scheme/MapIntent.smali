.class public Lnluparser/scheme/MapIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# static fields
.field public static final BUS:Ljava/lang/String; = "BUS"

.field public static final CAR:Ljava/lang/String; = "CAR"

.field public static final CURRENT_CITY:Ljava/lang/String; = "CURRENT_CITY"

.field public static final CURRENT_LOC:Ljava/lang/String; = "CURRENT_LOC"

.field public static final EBUS_NO_SUBWAY:Ljava/lang/String; = "EBUS_NO_SUBWAY"

.field public static final EBUS_TRANSFER_FIRST:Ljava/lang/String; = "EBUS_TRANSFER_FIRST"

.field public static final EBUS_WALK_FIRST:Ljava/lang/String; = "EBUS_WALK_FIRST"

.field public static final ECAR_DIS_FIRST:Ljava/lang/String; = "ECAR_DIS_FIRST"

.field public static final ECAR_FEE_FIRST:Ljava/lang/String; = "ECAR_FEE_FIRST"

.field public static final LOC_HOME:Ljava/lang/String; = "LOC_HOME"

.field public static final LOC_OFFICE:Ljava/lang/String; = "LOC_OFFICE"

.field public static final TIME_FIRST:Ljava/lang/String; = "TIME_FIRST"

.field public static final WALK:Ljava/lang/String; = "WALK"


# instance fields
.field condition:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "condition"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "condition"
    .end annotation
.end field

.field fromCity:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fromCity"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fromCity"
    .end annotation
.end field

.field fromPOI:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "fromPOI"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fromPOI"
    .end annotation
.end field

.field method:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "method"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method"
    .end annotation
.end field

.field toCity:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "toCity"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toCity"
    .end annotation
.end field

.field toPOI:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "toPOI"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "toPOI"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCondition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MapIntent;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getFromCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MapIntent;->fromCity:Ljava/lang/String;

    return-object v0
.end method

.method public getFromPOI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MapIntent;->fromPOI:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MapIntent;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getToCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MapIntent;->toCity:Ljava/lang/String;

    return-object v0
.end method

.method public getToPOI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MapIntent;->toPOI:Ljava/lang/String;

    return-object v0
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MapIntent;->condition:Ljava/lang/String;

    return-void
.end method

.method public setFromCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromCity"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MapIntent;->fromCity:Ljava/lang/String;

    return-void
.end method

.method public setFromPOI(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromPOI"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MapIntent;->fromPOI:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MapIntent;->method:Ljava/lang/String;

    return-void
.end method

.method public setToCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "toCity"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MapIntent;->toCity:Ljava/lang/String;

    return-void
.end method

.method public setToPOI(Ljava/lang/String;)V
    .locals 0
    .param p1, "toPOI"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MapIntent;->toPOI:Ljava/lang/String;

    return-void
.end method
