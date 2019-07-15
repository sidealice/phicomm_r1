.class public Lcom/phicomm/speaker/adapter/a/j;
.super Lcom/phicomm/speaker/adapter/a/a/c;
.source "SpeakerWeather.java"


# instance fields
.field private a:Lnluparser/scheme/WeatherResult;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/a/a/c;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    return-void
.end method


# virtual methods
.method public a()Lnluparser/scheme/WeatherResult;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/j;->a:Lnluparser/scheme/WeatherResult;

    return-object v0
.end method

.method public a(Lnluparser/scheme/WeatherResult;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/j;->a:Lnluparser/scheme/WeatherResult;

    return-void
.end method
