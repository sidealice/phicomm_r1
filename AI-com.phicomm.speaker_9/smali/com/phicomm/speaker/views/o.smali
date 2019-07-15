.class final synthetic Lcom/phicomm/speaker/views/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:Lcom/phicomm/speaker/views/n;


# direct methods
.method constructor <init>(ILcom/phicomm/speaker/views/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/phicomm/speaker/views/o;->a:I

    iput-object p2, p0, Lcom/phicomm/speaker/views/o;->b:Lcom/phicomm/speaker/views/n;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/phicomm/speaker/views/o;->a:I

    iget-object v1, p0, Lcom/phicomm/speaker/views/o;->b:Lcom/phicomm/speaker/views/n;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/n;->a(ILcom/phicomm/speaker/views/n;)V

    return-void
.end method
