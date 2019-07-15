.class final synthetic Lcom/phicomm/speaker/adapter/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/adapter/c/b;

.field private final b:Lcom/phicomm/speaker/bean/Introduction;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/c/b;Lcom/phicomm/speaker/bean/Introduction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/c/c;->a:Lcom/phicomm/speaker/adapter/c/b;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/c/c;->b:Lcom/phicomm/speaker/bean/Introduction;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c/c;->a:Lcom/phicomm/speaker/adapter/c/b;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/c/c;->b:Lcom/phicomm/speaker/bean/Introduction;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/adapter/c/b;->a(Lcom/phicomm/speaker/bean/Introduction;Landroid/view/View;)V

    return-void
.end method
