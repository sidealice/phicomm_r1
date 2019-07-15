.class public interface abstract Lforage/FieldFilter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lforage/FieldFilter$PSFSignatureFilter;,
        Lforage/FieldFilter$Default;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lforage/FieldFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lforage/FieldFilter$Default;

    invoke-direct {v0}, Lforage/FieldFilter$Default;-><init>()V

    sput-object v0, Lforage/FieldFilter;->DEFAULT:Lforage/FieldFilter;

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/String;ILjava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method
