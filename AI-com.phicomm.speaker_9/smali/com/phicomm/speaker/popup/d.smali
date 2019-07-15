.class final synthetic Lcom/phicomm/speaker/popup/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/popup/c;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/c;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/popup/d;->a:Lcom/phicomm/speaker/popup/c;

    iput-object p2, p0, Lcom/phicomm/speaker/popup/d;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/popup/d;->a:Lcom/phicomm/speaker/popup/c;

    iget-object v1, p0, Lcom/phicomm/speaker/popup/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/popup/c;->a(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
