.class final synthetic Lcom/phicomm/speaker/fragment/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/adapter/a$a;


# instance fields
.field private final a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/FavoriteListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/fragment/d;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/d;->a:Lcom/phicomm/speaker/fragment/FavoriteListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/fragment/FavoriteListFragment;->a(Landroid/view/View;I)V

    return-void
.end method
