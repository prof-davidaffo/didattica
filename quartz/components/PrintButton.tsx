import { QuartzComponent, QuartzComponentConstructor } from "./types"

const PrintButton: QuartzComponent = () => {
  return (
    <button
      type="button"
      title="Stampa"
      onclick="window.print()"
      style={{
        width: "100%",
        marginBottom: "1rem",
        padding: "0.4rem 0.6rem",
        cursor: "pointer",
      }}
    >
      🖨️ Stampa
    </button>
  )
}

export default (() => PrintButton) satisfies QuartzComponentConstructor

