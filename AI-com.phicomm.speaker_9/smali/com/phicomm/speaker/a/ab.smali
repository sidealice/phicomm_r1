.class public Lcom/phicomm/speaker/a/ab;
.super Ljava/lang/Object;
.source "ReminderUpdateEvent.java"


# instance fields
.field private a:Lcom/unisound/lib/time/bean/AlarmReminder;


# direct methods
.method public constructor <init>(Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/phicomm/speaker/a/ab;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    return-void
.end method


# virtual methods
.method public a()Lcom/unisound/lib/time/bean/AlarmReminder;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/phicomm/speaker/a/ab;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    return-object v0
.end method
