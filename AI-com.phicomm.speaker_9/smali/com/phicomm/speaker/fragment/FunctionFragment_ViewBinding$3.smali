.class Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FunctionFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;-><init>(Lcom/phicomm/speaker/fragment/FunctionFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/FunctionFragment;

.field final synthetic b:Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;Lcom/phicomm/speaker/fragment/FunctionFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$3;->b:Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$3;->a:Lcom/phicomm/speaker/fragment/FunctionFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/FunctionFragment_ViewBinding$3;->a:Lcom/phicomm/speaker/fragment/FunctionFragment;

    invoke-virtual {p1}, Lcom/phicomm/speaker/fragment/FunctionFragment;->enterMemo()V

    return-void
.end method
