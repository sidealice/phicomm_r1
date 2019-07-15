.class final synthetic Lcom/phicomm/speaker/activity/player/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/views/dialog/b$a;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/c;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/c;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(I)V

    return-void
.end method
