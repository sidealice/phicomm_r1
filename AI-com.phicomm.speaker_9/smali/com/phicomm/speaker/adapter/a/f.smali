.class public Lcom/phicomm/speaker/adapter/a/f;
.super Lcom/phicomm/speaker/adapter/a/a/c;
.source "SpeakerDateReminder.java"


# instance fields
.field private a:Lnluparser/scheme/ReminderIntent;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/a/a/c;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    return-void
.end method


# virtual methods
.method public a()Lnluparser/scheme/ReminderIntent;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/a/f;->a:Lnluparser/scheme/ReminderIntent;

    return-object v0
.end method

.method public a(Lnluparser/scheme/ReminderIntent;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a/f;->a:Lnluparser/scheme/ReminderIntent;

    return-void
.end method
