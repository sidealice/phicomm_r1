.class final synthetic Lcom/phicomm/speaker/activity/player/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/lib/mgr/ISwitchListListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/player/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/player/PlayListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/e;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    return-void
.end method


# virtual methods
.method public onPlaylistChange(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/e;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Ljava/lang/String;)V

    return-void
.end method
