.class final synthetic Lcom/phicomm/speaker/views/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/views/e;

.field private final b:Lcom/phicomm/speaker/c/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/e;Lcom/phicomm/speaker/c/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/g;->a:Lcom/phicomm/speaker/views/e;

    iput-object p2, p0, Lcom/phicomm/speaker/views/g;->b:Lcom/phicomm/speaker/c/c;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/views/g;->a:Lcom/phicomm/speaker/views/e;

    iget-object v1, p0, Lcom/phicomm/speaker/views/g;->b:Lcom/phicomm/speaker/c/c;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/views/e;->b(Lcom/phicomm/speaker/c/c;Landroid/view/View;)V

    return-void
.end method
