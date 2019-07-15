.class Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MineFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;-><init>(Lcom/phicomm/speaker/fragment/MineFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/MineFragment;

.field final synthetic b:Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$5;->b:Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$5;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$5;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/MineFragment;->gotoAbout()V

    return-void
.end method
