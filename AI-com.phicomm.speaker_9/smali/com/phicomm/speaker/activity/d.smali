.class final synthetic Lcom/phicomm/speaker/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/d;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/d;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    return-void
.end method
