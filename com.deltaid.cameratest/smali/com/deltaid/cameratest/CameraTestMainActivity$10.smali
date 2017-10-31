.class Lcom/deltaid/cameratest/CameraTestMainActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deltaid/cameratest/CameraTestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deltaid/cameratest/CameraTestMainActivity;


# direct methods
.method constructor <init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-boolean v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->g()V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->n:Landroid/widget/Button;

    const-string v1, "Save Video"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->K:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->n:Landroid/widget/Button;

    const-string v1, "Stop Saving"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->K:Z

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$10;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    const-string v1, "Videos"

    invoke-virtual {v0, v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
