.class public Lnluparser/scheme/FlightIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# static fields
.field public static final BIZ_CLASS:Ljava/lang/String; = "BIZ_CLASS"

.field public static final CURRENT_CITY:Ljava/lang/String; = "CURRENT_CITY"

.field public static final DEPART_TIME_ASC:Ljava/lang/String; = "DEPART_TIME_ASC"

.field public static final DEPART_TIME_DESC:Ljava/lang/String; = "DEPART_TIME_DESC"

.field public static final ECONOMY_CLASS:Ljava/lang/String; = "ECONOMY_CLASS"

.field public static final FIRST_CLASS:Ljava/lang/String; = "FIRST_CLASS"

.field public static final PRICE_ASC:Ljava/lang/String; = "PRICE_ASC"

.field public static final PRICE_DESC:Ljava/lang/String; = "PRICE_DESC"


# instance fields
.field airlineCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "airlineCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "airlineCode"
    .end annotation
.end field

.field departDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "departDate"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "departDate"
    .end annotation
.end field

.field departT:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "departT"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "departT"
    .end annotation
.end field

.field destination:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "destination"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "destination"
    .end annotation
.end field

.field flightNo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "flightNo"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flightNo"
    .end annotation
.end field

.field origin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "origin"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "origin"
    .end annotation
.end field

.field returnDate:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "returnDate"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "returnDate"
    .end annotation
.end field

.field seat:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "seat"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seat"
    .end annotation
.end field

.field sort:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sort"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirlineCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->airlineCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->departDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->departT:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->flightNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->returnDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSeat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->seat:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/FlightIntent;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public setAirlineCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "airlineCode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->airlineCode:Ljava/lang/String;

    return-void
.end method

.method public setDepartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "departDate"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->departDate:Ljava/lang/String;

    return-void
.end method

.method public setDepartT(Ljava/lang/String;)V
    .locals 0
    .param p1, "departT"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->departT:Ljava/lang/String;

    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 0
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->destination:Ljava/lang/String;

    return-void
.end method

.method public setFlightNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "flightNo"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->flightNo:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->origin:Ljava/lang/String;

    return-void
.end method

.method public setReturnDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnDate"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->returnDate:Ljava/lang/String;

    return-void
.end method

.method public setSeat(Ljava/lang/String;)V
    .locals 0
    .param p1, "seat"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->seat:Ljava/lang/String;

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/FlightIntent;->sort:Ljava/lang/String;

    return-void
.end method
