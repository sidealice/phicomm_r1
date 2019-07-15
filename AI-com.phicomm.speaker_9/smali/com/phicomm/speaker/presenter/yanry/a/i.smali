.class final synthetic Lcom/phicomm/speaker/presenter/yanry/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/presenter/yanry/a/h;

.field private final b:Lcom/unisound/lib/music/bean/MusicList;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/h;Lcom/unisound/lib/music/bean/MusicList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/i;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/i;->b:Lcom/unisound/lib/music/bean/MusicList;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/i;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/i;->b:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/unisound/lib/music/bean/MusicList;Landroid/view/View;)V

    return-void
.end method
