.class final synthetic Lcom/phicomm/speaker/adapter/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/adapter/s;

.field private final b:Lcom/phicomm/speaker/adapter/s$a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/s;Lcom/phicomm/speaker/adapter/s$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/t;->a:Lcom/phicomm/speaker/adapter/s;

    iput-object p2, p0, Lcom/phicomm/speaker/adapter/t;->b:Lcom/phicomm/speaker/adapter/s$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/t;->a:Lcom/phicomm/speaker/adapter/s;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/t;->b:Lcom/phicomm/speaker/adapter/s$a;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/adapter/s;->a(Lcom/phicomm/speaker/adapter/s$a;Landroid/view/View;)V

    return-void
.end method
