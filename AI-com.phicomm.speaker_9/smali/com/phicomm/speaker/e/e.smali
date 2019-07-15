.class final synthetic Lcom/phicomm/speaker/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;


# static fields
.field static final a:Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/phicomm/speaker/e/e;

    invoke-direct {v0}, Lcom/phicomm/speaker/e/e;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/e/e;->a:Lcom/unisound/lib/time/listener/IAlarmStateChangeListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmStateChange(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Lcom/unisound/lib/time/bean/AlarmReminder;)V

    return-void
.end method
