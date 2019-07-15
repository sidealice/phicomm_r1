.class public Lcom/phicomm/speaker/adapter/a/c;
.super Lcom/phicomm/speaker/adapter/a/a/c;
.source "SpeakerAlarm.java"


# instance fields
.field private a:Lnluparser/scheme/AlarmIntent;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/a/a/c;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    return-void
.end method


# virtual methods
.method public a()Lnluparser/scheme/AlarmIntent;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/c;->a:Lnluparser/scheme/AlarmIntent;

    return-object v0
.end method

.method public a(Lnluparser/scheme/AlarmIntent;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/c;->a:Lnluparser/scheme/AlarmIntent;

    return-void
.end method
