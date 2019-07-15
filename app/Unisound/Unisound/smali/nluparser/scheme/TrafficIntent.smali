.class public Lnluparser/scheme/TrafficIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# static fields
.field public static final CURRENT_CITY:Ljava/lang/String; = "CURRENT_CITY"

.field public static final EAST_TO_WEST:Ljava/lang/String; = "EAST_TO_WEST"

.field public static final INNER_CIRCLE:Ljava/lang/String; = "INNER_CIRCLE"

.field public static final INTO_TOWN:Ljava/lang/String; = "INTO_TOWN"

.field public static final NORTH_TO_SOUTH:Ljava/lang/String; = "NORTH_TO_SOUTH"

.field public static final OUTER_RING:Ljava/lang/String; = "OUTER_RING"

.field public static final OUT_OF_TOWN:Ljava/lang/String; = "OUT_OF_TOWN"

.field public static final ROAD_AHEAD:Ljava/lang/String; = "ROAD_AHEAD"

.field public static final ROAD_SURROUNDING:Ljava/lang/String; = "ROAD_SURROUNDING"

.field public static final SOUTH_TO_NORTH:Ljava/lang/String; = "SOUTH_TO_NORTH"

.field public static final WEST_TO_EAST:Ljava/lang/String; = "WEST_TO_EAST"


# instance fields
.field city:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "city"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field direction:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "direction"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direction"
    .end annotation
.end field

.field road:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "road"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "road"
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

    iget-object v0, p0, Lnluparser/scheme/TrafficIntent;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TrafficIntent;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/TrafficIntent;->road:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TrafficIntent;->city:Ljava/lang/String;

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "direction"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TrafficIntent;->direction:Ljava/lang/String;

    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0
    .param p1, "road"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/TrafficIntent;->road:Ljava/lang/String;

    return-void
.end method
